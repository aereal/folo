require 'spec_helper'

describe "UsersController" do
  subject do
    last_response
  end

  let(:user) do
    Fabricate(:user)
  end

  describe "#index" do
    before do
      get app.url_for(:users, :index)
    end

    it "is OK" do
      should be_ok
    end
  end

  describe "#show" do
    before do
      get app.url_for(:users, :show, nickname: user)
    end

    it "is OK" do
      should be_ok
    end
  end
end
