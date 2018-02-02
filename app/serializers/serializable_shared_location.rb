# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableSharedLocation < JSONAPI::Serializable::Resource
  type :shared_locations

  # Add attributes here to ensure they get rendered, .e.g.
  #
  # attribute :name
  #
  # To customize, pass a block and reference the underlying @object
  # being serialized:
  #
  # attribute :name do
  #   @object.name.upcase
  # end
  attribute :token
  attribute :latitude
  attribute :longitude
  attribute :heading
  attribute :compass
  attribute :name
end
