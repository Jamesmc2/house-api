class HousesController < ApplicationController
  def index
    @houses = House.all()
    render :index
  end

  def create
    @house = House.new(
      address: params[:address],
      squarefeet: params[:squarefeet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
    )
    @house.save
    render :show
  end
end
