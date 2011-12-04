class FlickrAccount
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :user_id, :type => String

  # relations
  embedded_in :account
end
