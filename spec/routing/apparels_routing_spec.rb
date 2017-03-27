require "rails_helper"

RSpec.describe ApparelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/apparels").to route_to("apparels#index")
    end

    it "routes to #new" do
      expect(:get => "/apparels/new").to route_to("apparels#new")
    end

    it "routes to #show" do
      expect(:get => "/apparels/1").to route_to("apparels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/apparels/1/edit").to route_to("apparels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/apparels").to route_to("apparels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/apparels/1").to route_to("apparels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/apparels/1").to route_to("apparels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/apparels/1").to route_to("apparels#destroy", :id => "1")
    end

  end
end
