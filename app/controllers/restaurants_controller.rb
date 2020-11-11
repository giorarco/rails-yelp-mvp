class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all #passing an instance variable from the model
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new

  end

def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save

      redirect_to restaurant_path(@restaurant)
    else

      render :new
    end
  end

  # def set_restaurant_by_id
  #   @restaurant = Restaurant.find(params[:id])
  # end
  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end

