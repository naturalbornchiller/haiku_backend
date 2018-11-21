require "rails_helper"

RSpec.describe HaikuController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/haiku").to route_to("haiku#index")
    end


    it "routes to #show" do
      expect(:get => "/haiku/1").to route_to("haiku#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/haiku").to route_to("haiku#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/haiku/1").to route_to("haiku#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/haiku/1").to route_to("haiku#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/haiku/1").to route_to("haiku#destroy", :id => "1")
    end

  end
end
