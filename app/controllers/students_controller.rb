class StudentsController < ApplicationController

  wrap_parameters format: []
  def index
    plants = Plant.all
    render json: plants
  end

  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end

  def create
      plant = Plant.create(params_plant)
      render json: plant, status: :created 
  end

  private

  def params_plant
      params.permit(:name, :image, :price)
  end  

end
