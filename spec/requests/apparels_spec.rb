require 'rails_helper'

RSpec.describe "Apparels", type: :request do
  describe "GET /apparels" do
    it "works! (now write some real specs)" do
      get apparels_path
      expect(response).to have_http_status(200)
    end
  end
end
