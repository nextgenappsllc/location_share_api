class ShareLocationChannel < ApplicationCable::Channel

  def subscribed
    stream_from "share_location_#{params[:id]}"
  end

  def unsubscribed
    ActionCable.server.broadcast 'shared_locations', remove: params[:id]
    SharedLocation.find_by(id: params[:id])&.destroy
  end

  def receive(data)
    # puts data
    @shared_location = SharedLocation.find(params[:id])
    @shared_location.update!(data.slice('latitude', 'longitude', 'heading', 'compass'))
    ActionCable.server.broadcast("shared_location_#{@shared_location.id}", @shared_location.attributes.except('token'))
  end

end