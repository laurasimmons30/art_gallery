class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @picture = Picture.new
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @picture = Picture.new(picture_params)
    @picture.gallery = @gallery
    if @picture.save
      flash[:notice] = "Picture Added"
      redirect_to gallery_pictures_path(@gallery)
    else
      render :new
    end
  end

  protected

  def picture_params
    params.require(:picture).permit(:name, :file)
  end

end
