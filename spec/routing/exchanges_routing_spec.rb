require "spec_helper"

describe ExchangesController do
  describe "routing" do

    it "routes to #index" do
      get("/exchanges").should route_to("exchanges#index")
    end

    it "routes to #new" do
      get("/exchanges/new").should route_to("exchanges#new")
    end

    it "routes to #show" do
      get("/exchanges/1").should route_to("exchanges#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exchanges/1/edit").should route_to("exchanges#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exchanges").should route_to("exchanges#create")
    end

    it "routes to #update" do
      put("/exchanges/1").should route_to("exchanges#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exchanges/1").should route_to("exchanges#destroy", :id => "1")
    end

  end
end
