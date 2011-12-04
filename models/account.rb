class Account
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :nickname, :type => String
  field :email, :type => String
  field :role, :type => String
end
