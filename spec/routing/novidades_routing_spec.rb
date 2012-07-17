require "spec_helper"

describe NovidadesController do
  describe "routing" do

    it "routes to #index" do
      get("/novidades").should route_to("novidades#index")
    end

    it "routes to #new" do
      get("/novidades/new").should route_to("novidades#new")
    end

    it "routes to #show" do
      get("/novidades/1").should route_to("novidades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/novidades/1/edit").should route_to("novidades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/novidades").should route_to("novidades#create")
    end

    it "routes to #update" do
      put("/novidades/1").should route_to("novidades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/novidades/1").should route_to("novidades#destroy", :id => "1")
    end

  end
end
