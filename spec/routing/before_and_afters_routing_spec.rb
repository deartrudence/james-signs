require "rails_helper"

RSpec.describe BeforeAndAftersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/before_and_afters").to route_to("before_and_afters#index")
    end

    it "routes to #new" do
      expect(:get => "/before_and_afters/new").to route_to("before_and_afters#new")
    end

    it "routes to #show" do
      expect(:get => "/before_and_afters/1").to route_to("before_and_afters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/before_and_afters/1/edit").to route_to("before_and_afters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/before_and_afters").to route_to("before_and_afters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/before_and_afters/1").to route_to("before_and_afters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/before_and_afters/1").to route_to("before_and_afters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/before_and_afters/1").to route_to("before_and_afters#destroy", :id => "1")
    end

  end
end
