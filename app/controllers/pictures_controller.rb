class PicturesController < ApplicationController
  def index
  end

  def new
    @picture = Picture.new
  end

  def create
    Picture.create(content: params[:picture][:content], image: params[:picture][:image])
    redirect_to new_picture_path
  end


end
