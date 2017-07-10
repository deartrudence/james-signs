require 'rails_helper'

RSpec.describe "BeforeAndAfters", type: :request do
  describe "GET /before_and_afters" do
    it "works! (now write some real specs)" do
      get before_and_afters_path
      expect(response).to have_http_status(200)
    end
  end
end
