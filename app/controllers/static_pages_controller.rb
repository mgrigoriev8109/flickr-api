require 'flickr'

class StaticPagesController < ApplicationController
  def index
    flickr = Flickr.new
    flickr_id = picture_params[:flickr_id]
    @pictures = flickr.photos.search(user_id: flickr_id)
  end

  def picture_params
    params.permit(:flickr_id)
  end
end
