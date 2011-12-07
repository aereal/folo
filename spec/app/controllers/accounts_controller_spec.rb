require 'spec_helper'

describe "AccountsController" do
  before do
    get url
  end

  subject { last_response }

  let(:user) do
    Fabricate(:user)
  end

  describe "#index" do
    let(:url) { app.url_for(:accounts, :index, user_id: user) }

    it "is OK" do
      should be_ok
    end
  end
end
