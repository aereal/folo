require 'spec_helper'

describe "FlickrAccount Model" do
  let(:flickr_account) { FlickrAccount.new }
  it 'can be created' do
    flickr_account.should_not be_nil
  end
end
