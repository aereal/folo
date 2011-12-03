class HatenaFotolifeItem
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :hatena_id, :type => String
  field :entry_id, :type => String

  # You can define indexes on documents using the index macro:
  # index :field <, :unique => true>

  # You can create a composite key in mongoid to replace the default id using the key macro:
  # key :field <, :another_field, :one_more ....>

  def entry_path
    [Time.parse(entry_id).strftime('%Y%m%d'), entry_id].join('/')
  end

  def resource_url(format)
    "http://img.f.hatena.ne.jp/images/fotolife/#{hatena_id.first}/#{hatena_id}/#{entry_path}.#{format}"
  end
end
