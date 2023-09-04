class HousesController < ApplicationController
  def search
    @houses = House.within(
      params[:lat],
      params[:lng],
      params[:radius],
    )
    render json: @houses
  end
end
