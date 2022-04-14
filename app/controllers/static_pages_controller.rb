require 'flickr'

class StaticPagesController < ApplicationController
  def index

    flickr = Flickr.new ENV['pusher_key'], ENV['pusher_secret']
    @pictures = []

    unless picture_params[:flickr_id].nil?
      @pictures = flickr.photos.search(ENV['pusher_key'], picture_params[:flickr_id])
    end

  end

  def picture_params
    params.permit(:flickr_id)
  end
end
