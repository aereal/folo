require 'spec_helper'

describe "UsersController" do
  before do
    get url
  end

  subject { last_response }

  let(:user) do
    Fabricate(:user)
  end

  describe "#index" do
    let(:url) { app.url_for(:users, :index) }

    it "is OK" do
      should be_ok
    end
  end

  describe "#show" do
    let(:url) { app.url_for(:users, :show, nickname: user) }

    it "is OK" do
      should be_ok
    end
  end
end
