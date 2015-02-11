class CheesesController < ApplicationController

  def index
    @cheeses = Cheese.all
  end

  def show
    @cheese = Cheese.find(params[:id])
  end

  def new
    @cheese = Cheese.new
  end

  def create
    cheese = Cheese.create(cheese_params)
    cheese.save
    redirect_to cheeses_path
  end

  def destroy
    Cheese.destroy(params[:id])
    redirect_to cheeses_path
  end

  def edit
    @cheese = Cheese.find(params[:id])
  end

  def update
    cheese = Cheese.find(params[:id])
    cheese.update(cheese_params)
    redirect_to cheese
  end

  def cheese_params
    params.require(:cheese).permit(:name, :milk_type, :description)
  end

end
