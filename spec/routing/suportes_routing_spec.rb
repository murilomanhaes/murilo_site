require "spec_helper"

describe SuportesController do
  describe "routing" do

    it "routes to #index" do
      get("/suportes").should route_to("suportes#index")
    end

    it "routes to #new" do
      get("/suportes/new").should route_to("suportes#new")
    end

    it "routes to #show" do
      get("/suportes/1").should route_to("suportes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/suportes/1/edit").should route_to("suportes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/suportes").should route_to("suportes#create")
    end

    it "routes to #update" do
      put("/suportes/1").should route_to("suportes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/suportes/1").should route_to("suportes#destroy", :id => "1")
    end

  end
end
