require "spec_helper"

describe CoinExchangesController do
  describe "routing" do

    it "routes to #index" do
      get("/coin_exchanges").should route_to("coin_exchanges#index")
    end

    it "routes to #new" do
      get("/coin_exchanges/new").should route_to("coin_exchanges#new")
    end

    it "routes to #show" do
      get("/coin_exchanges/1").should route_to("coin_exchanges#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coin_exchanges/1/edit").should route_to("coin_exchanges#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coin_exchanges").should route_to("coin_exchanges#create")
    end

    it "routes to #update" do
      put("/coin_exchanges/1").should route_to("coin_exchanges#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coin_exchanges/1").should route_to("coin_exchanges#destroy", :id => "1")
    end

  end
end
