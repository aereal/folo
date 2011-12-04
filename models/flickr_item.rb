class FlickrItem
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :farm_id, :type => Integer
  field :server_id, :type => String
  field :item_id, :type => String
  field :secret, :type => String
  field :flickr_id, :type => String

  # relations
  embedded_in :item

  def url
    "http://farm#{farm_id}.static.flickr.com/#{server_id}/#{item_id}_#{secret}.#{item.format}"
  end

  def permalink
    "http://www.flickr.com/photos/#{flickr_id}/#{item_id}"
  end
end
