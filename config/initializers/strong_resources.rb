StrongResources.configure do

  strong_resource :shared_location do
    # attribute :id, :integer
    # attribute :token, :string
    attribute :latitude, :number
    attribute :longitude, :number
    attribute :heading, :number
    attribute :compass, :number
    attribute :name, :string
  end

end