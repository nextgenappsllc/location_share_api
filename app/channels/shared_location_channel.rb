class SharedLocationChannel < ApplicationCable::Channel

  def subscribed
    channel = params[:id].blank? ? 'shared_locations' : "shared_location_#{params[:id]}"
    stream_from channel
  end

end