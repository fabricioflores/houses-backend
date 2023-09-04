class HousesController < ApplicationController
  def search
    if missing_search_params
      render json: { error: "Missing lat/lng/distance parameters" }, status: 400
      return
    end

    @houses = House.within(house_search_params)
    render json: @houses
  end

  private

  def missing_search_params
    params[:lat].blank? || params[:lng].blank? || params[:distance].blank?
  end

  def house_search_params
    params.permit(:lat, :lng, :distance)
  end

end
