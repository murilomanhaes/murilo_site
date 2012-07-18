require "spec_helper"

describe ParceirosController do
  describe "routing" do

    it "routes to #index" do
      get("/parceiros").should route_to("parceiros#index")
    end

    it "routes to #new" do
      get("/parceiros/new").should route_to("parceiros#new")
    end

    it "routes to #show" do
      get("/parceiros/1").should route_to("parceiros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/parceiros/1/edit").should route_to("parceiros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/parceiros").should route_to("parceiros#create")
    end

    it "routes to #update" do
      put("/parceiros/1").should route_to("parceiros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/parceiros/1").should route_to("parceiros#destroy", :id => "1")
    end

  end
end
