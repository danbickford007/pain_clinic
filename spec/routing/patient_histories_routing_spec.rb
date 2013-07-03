require "spec_helper"

describe PatientHistoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/patient_histories").should route_to("patient_histories#index")
    end

    it "routes to #new" do
      get("/patient_histories/new").should route_to("patient_histories#new")
    end

    it "routes to #show" do
      get("/patient_histories/1").should route_to("patient_histories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/patient_histories/1/edit").should route_to("patient_histories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/patient_histories").should route_to("patient_histories#create")
    end

    it "routes to #update" do
      put("/patient_histories/1").should route_to("patient_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/patient_histories/1").should route_to("patient_histories#destroy", :id => "1")
    end

  end
end
