require "spec_helper"

describe VodkasController do
  describe "routing" do

    it "routes to #index" do
      get("/vodkas").should route_to("vodkas#index")
    end

    it "routes to #new" do
      get("/vodkas/new").should route_to("vodkas#new")
    end

    it "routes to #show" do
      get("/vodkas/1").should route_to("vodkas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vodkas/1/edit").should route_to("vodkas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vodkas").should route_to("vodkas#create")
    end

    it "routes to #update" do
      put("/vodkas/1").should route_to("vodkas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vodkas/1").should route_to("vodkas#destroy", :id => "1")
    end

  end
end
