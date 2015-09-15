class HousesController < ApplicationController
  def show
    @house = House.find_by(id: params[:id])
  end
  def index

  end
end
