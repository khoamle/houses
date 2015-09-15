class Api::V1::HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find_by(id: params[:id])
  end

  def create
    @house = House.new(street_address: params[:street_address], city: params[:city], state: params[:state], zip_code: params[:zip_code], country: params[:country])
    if @house.save

    else
      render json: { errors: @house.errors.full_messages}, status: 422
    end
  end

  def update
    @house = House.find_by(id: params[:id])
    @house.update(street_address: params[:street_address], city: params[:city], state: params[:state], zip_code: params[:zip_code], country: params[:country])
    render :show
  end

  def destroy
    @house = House.find_by(id: params[:id])
    @house.destroy
    render nothing: true
  end
end
