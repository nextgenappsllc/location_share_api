require 'rails_helper'

RSpec.describe "shared_locations#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/shared_locations/#{shared_location.id}", payload
  end

  describe 'basic update' do
    let!(:shared_location) { create(:shared_location) }

    let(:payload) do
      {
        data: {
          id: shared_location.id.to_s,
          type: 'shared_locations',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect {
        make_request
      }.to change { shared_location.reload.attributes }
      assert_payload(:shared_location, shared_location, json_item)

      # ... assert updates attributes ...
    end
  end
end
