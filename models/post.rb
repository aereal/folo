class Post
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :title, :type => String
  field :format, :type => String

  # relations
  embeds_one :photo

  # scopes
  scope :recent, desc(:created_at)
  default_scope recent
end
