require 'spec_helper'

describe "AccountsController" do
  before do
    get url
  end

  subject { last_response }

  describe "#index" do
    let(:url) { app.url_for(:accounts, :index) }

    it "is OK" do
      should be_ok
    end
  end
end
