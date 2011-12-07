class User
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :nickname, type: String
  field :email,    type: String
  field :role,     type: String, default: :users

  # relations
  embeds_many :accounts

  class << self
    def find_by_id(_id)
      find(_id) rescue nil
    end
  end

  def authorize!(auth)
    accounts.create! do |account|
      account.uid    = auth.uid
      account.token  = auth.credentials.token
      account.secret = auth.credentials.secret
    end
  end

  def to_param
    nickname
  end
end
