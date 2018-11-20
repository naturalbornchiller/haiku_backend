require 'rails_helper'

RSpec.describe "Haikus", type: :request do
  describe "GET /haikus" do
    it "works! (now write some real specs)" do
      get haikus_path
      expect(response).to have_http_status(200)
    end
  end
end
