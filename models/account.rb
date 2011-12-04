class Account
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :provider, type: String
  field :uid,      type: String
  field :token,    type: String
  field :secret,   type: String

  # validations
  validates_presence_of :provider

  # relations
  embedded_in :user
end
