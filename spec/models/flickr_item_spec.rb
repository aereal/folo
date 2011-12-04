require 'spec_helper'

describe "FlickrItem Model" do
  let(:flickr_item) { FlickrItem.new }
  it 'can be created' do
    flickr_item.should_not be_nil
  end
end
