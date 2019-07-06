class LiveAppointmentChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "live_appointment"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
