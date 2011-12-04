class Item
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :title, :type => String
  field :format, :type => String

  # relations
  embeds_one :hatena_fotolife_item
  embeds_one :flickr_item

  def entities
    %w(hatena_fotolife_item flickr_item).map {|entity_name| respond_to?(entity_name) && __send__(entity_name) }.compact
  end

  def entity(service=nil)
    service ? __send__("#{service}_item") : entities.first
  end
end
