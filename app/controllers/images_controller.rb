class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to @image
    else
      render 'new'
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  def index
    @images = if tag_param.key?(:tag)
                Image.tagged_with(tag_param[:tag]).order(id: :desc)
              else
                Image.order(id: :desc)
              end
  end

  private

  def image_params
    params.require(:image).permit(:url, :tag_list)
  end

  def tag_param
    params.permit(:tag)
  end
end
