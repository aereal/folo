class Item
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :title, :type => String
  field :format, :type => String

  # relations
  embeds_one :hatena_fotolife_item
  embeds_one :flickr_item

  def entity(service)
    __send__("#{service}_item")
  end
end
