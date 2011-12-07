require 'spec_helper'

describe "Photo Model" do
  let(:photo) { Photo.new }
  it 'can be created' do
    photo.should_not be_nil
  end
end
