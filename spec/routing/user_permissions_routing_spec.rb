require "spec_helper"

describe UserPermissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_permissions").should route_to("user_permissions#index")
    end

    it "routes to #new" do
      get("/user_permissions/new").should route_to("user_permissions#new")
    end

    it "routes to #show" do
      get("/user_permissions/1").should route_to("user_permissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_permissions/1/edit").should route_to("user_permissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_permissions").should route_to("user_permissions#create")
    end

    it "routes to #update" do
      put("/user_permissions/1").should route_to("user_permissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_permissions/1").should route_to("user_permissions#destroy", :id => "1")
    end

  end
end
