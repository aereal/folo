class HatenaFotolifeItem
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :hatena_id, :type => String
  field :entry_id, :type => String

  # relations
  embedded_in :item

  def entry_path
    [Time.parse(entry_id).strftime('%Y%m%d'), entry_id].join('/')
  end

  def url
    "http://img.f.hatena.ne.jp/images/fotolife/#{hatena_id.first}/#{hatena_id}/#{entry_path}.#{item.format}"
  end
end
