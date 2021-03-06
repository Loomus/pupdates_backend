class Api::V1::DogImagesController < ApplicationController
  def index
    render json: DogImageSerializer.new(DogImage.all)
  end

  def show
    render json: DogImageSerializer.new(Dog.find_by(id: params[:id]).dog_images)
  end
end
