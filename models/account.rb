class Account
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :name, :type => String
  field :email, :type => String
  field :role, :type => String

  # relations
  embeds_one :flickr_account

  delegate :service_account_name, to: 'self.class'

  class << self
    def find_by_id(_id)
      find(_id) rescue nil
    end

    def find_by_provider_and_uid(params)
      where("#{params[:provider]}_account.uid" => params[:uid]).first
    end

    def service_account_name(service)
      [service, collection_name.singularize].join('_')
    end

    def authorize!(auth)
      create! do |account|
        account.name = auth.info.name
        account.email = auth.info.email
        account.role = :user
        account.create_service_account(auth.provider, auth.credentials)
      end
    end
  end

  def create_service_account(service, *args)
    __send__('create_' + service_account_name(service), *args)
  end

  def build_service_account(service, *args)
    __send__('build_' + service_account_name(service), *args)
  end

  def service_account(service)
    __send__(service_account_name(service))
  end

  def service_account=(service, value)
    __send__(service_account_name(service) + '=')
  end
end
