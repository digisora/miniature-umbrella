class PhotosController < ApplicationController
  def create
    @photo = Place.find(params[:place_id])
    @photo.photos.create(photo_params)
    redirect_to place_path(@photo)
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end

end
