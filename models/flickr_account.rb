class FlickrAccount
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :uid, :type => String
  field :token, :type => String
  field :secret, :type => String

  # relations
  embedded_in :account

  def authorize!(auth)
    update_attributes! do |fa|
      fa.uid = auth.uid
      fa.token   = auth.credentials.token
      fa.secret  = auth.credentials.secret

      fa.account.name ||= auth.info.name
    end
  end
end
