class CountriesController < ApplicationController

  def index
    @countries = Country.all
    render json: @countries
  end

  def show
    @country = Country.find(params[:id])
    render json: @country
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    country = Country.find(params[:id])
    country.update(country_params)
    # render json: @country
    redirect to country
  end

  def destroy
    Country.destroy(params[:id])
  end

  def set_country
    @country = Country.find_by(id: params[:id])
  end

  def country_params
    params.require(:country).permit(:annihilated)
  end

end
