require 'rails_helper'

RSpec.describe "shared_locations#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/shared_locations/#{shared_location.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:shared_location) { create(:shared_location) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:shared_location, shared_location, json_item)
    end
  end
end
