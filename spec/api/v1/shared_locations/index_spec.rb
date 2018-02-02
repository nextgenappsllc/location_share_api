require 'rails_helper'

RSpec.describe "shared_locations#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/shared_locations",
      params: params
  end

  describe 'basic fetch' do
    let!(:shared_location1) { create(:shared_location) }
    let!(:shared_location2) { create(:shared_location) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([shared_location1.id, shared_location2.id])
      assert_payload(:shared_location, shared_location1, json_items[0])
      assert_payload(:shared_location, shared_location2, json_items[1])
    end
  end
end
