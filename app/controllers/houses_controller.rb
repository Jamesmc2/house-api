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

  def update
    @house = House.find_by(id: params[:id])
    @house.address = params[:address] || @house.address
    @house.squarefeet = params[:squarefeet] || @house.squarefeet
    @house.bedrooms = params[:bedrooms] || @house.bedrooms
    @house.bathrooms = params[:bathrooms] || @house.bathrooms
    @house.save
    render :show
  end
end
