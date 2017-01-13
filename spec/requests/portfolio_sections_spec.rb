require 'rails_helper'

RSpec.describe "PortfolioSections", type: :request do
  describe "GET /portfolio_sections" do
    it "works! (now write some real specs)" do
      get portfolio_sections_path
      expect(response).to have_http_status(200)
    end
  end
end
