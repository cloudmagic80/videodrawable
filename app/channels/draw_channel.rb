class DrawChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "draw_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    ActionCable.server.broadcast "draw_channel", data
  end
end
