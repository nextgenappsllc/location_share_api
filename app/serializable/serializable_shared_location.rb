class SerializableSharedLocation < JSONAPI::Serializable::Resource
  type 'shared_locations'
  # attribute :token
  attribute :latitude
  attribute :longitude
  attribute :heading
  attribute :compass
  attribute :name
  attribute :created_at
  attribute :updated_at
end
