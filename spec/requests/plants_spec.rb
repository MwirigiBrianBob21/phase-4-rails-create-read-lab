require 'rails_helper'

RSpec.describe "Plants", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/plants/index"
      expect(response).to have_http_status(:success)
    end
  end

end
