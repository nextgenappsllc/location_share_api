require 'rails_helper'

RSpec.describe "shared_locations#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/shared_locations/#{shared_location.id}"
  end

  describe 'basic destroy' do
    let!(:shared_location) { create(:shared_location) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { SharedLocation.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
