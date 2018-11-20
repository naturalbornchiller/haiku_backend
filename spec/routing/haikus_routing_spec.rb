require "rails_helper"

RSpec.describe HaikusController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/haikus").to route_to("haikus#index")
    end


    it "routes to #show" do
      expect(:get => "/haikus/1").to route_to("haikus#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/haikus").to route_to("haikus#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/haikus/1").to route_to("haikus#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/haikus/1").to route_to("haikus#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/haikus/1").to route_to("haikus#destroy", :id => "1")
    end

  end
end
