require 'rails_helper'

RSpec.describe "shared_locations#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/shared_locations", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'shared_locations',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { SharedLocation.count }.by(1)
      shared_location = SharedLocation.last

      assert_payload(:shared_location, shared_location, json_item)
    end
  end
end
