class Photo
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :photo_id, type: String
  field :provider, type: String

  # relations
  embedded_in :post
end
