require 'spec_helper'

describe "CoinExchanges" do
  describe "GET /coin_exchanges" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get coin_exchanges_path
      response.status.should be(200)
    end
  end
end
