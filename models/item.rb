class Item
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :title, :type => String
  field :format, :type => String

  # relations
  embeds_one :hatena_fotolife_item

  def url(primary_site)
    __send__("#{primary_site}_item").url
  end
end
