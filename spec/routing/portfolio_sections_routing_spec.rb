require "rails_helper"

RSpec.describe PortfolioSectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/portfolio_sections").to route_to("portfolio_sections#index")
    end

    it "routes to #new" do
      expect(:get => "/portfolio_sections/new").to route_to("portfolio_sections#new")
    end

    it "routes to #show" do
      expect(:get => "/portfolio_sections/1").to route_to("portfolio_sections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/portfolio_sections/1/edit").to route_to("portfolio_sections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/portfolio_sections").to route_to("portfolio_sections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/portfolio_sections/1").to route_to("portfolio_sections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/portfolio_sections/1").to route_to("portfolio_sections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/portfolio_sections/1").to route_to("portfolio_sections#destroy", :id => "1")
    end

  end
end
