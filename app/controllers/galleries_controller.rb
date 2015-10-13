class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      flash[:notice] = "Gallery created"
      redirect_to gallery_pictures_path(@gallery)
    else
      render :new 
    end
  end

  def show
    @gallery = Gallery.find_by(id: params[:id])
  end
  protected

  def gallery_params
    params.require(:gallery).permit(:title)
  end

end
