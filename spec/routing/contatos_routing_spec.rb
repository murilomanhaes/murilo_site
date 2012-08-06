require "spec_helper"

describe ContatosController do
  describe "routing" do

    it "routes to #index" do
      get("/contatos").should route_to("contatos#index")
    end

    it "routes to #new" do
      get("/contatos/new").should route_to("contatos#new")
    end

    it "routes to #show" do
      get("/contatos/1").should route_to("contatos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contatos/1/edit").should route_to("contatos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contatos").should route_to("contatos#create")
    end

    it "routes to #update" do
      put("/contatos/1").should route_to("contatos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contatos/1").should route_to("contatos#destroy", :id => "1")
    end

  end
end
