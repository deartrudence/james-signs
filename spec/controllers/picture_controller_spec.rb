require 'rails_helper'

RSpec.describe PictureController, type: :controller do

  describe "GET #sort" do
    it "returns http success" do
      get :sort
      expect(response).to have_http_status(:success)
    end
  end

end
