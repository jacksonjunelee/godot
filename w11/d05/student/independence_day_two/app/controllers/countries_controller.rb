class CountriesController < ApplicationController

  def show
    @country = Country.find(params[:id])
    @countries = Country.all
    render json: @country
    render json: @countries
  end

end
