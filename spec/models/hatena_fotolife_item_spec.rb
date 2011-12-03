require 'spec_helper'

describe "HatenaFotolifeItem Model" do
  let(:hatena_fotolife_item) { HatenaFotolifeItem.new }
  it 'can be created' do
    hatena_fotolife_item.should_not be_nil
  end
end
