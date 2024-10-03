class FavouritesController < ApplicationController
  def create
    @favourite = Favourite.new
    @car = Car.find(params[:car_id])
    @favourite.save
    if @favourite.save
      redirect_to car_path(@car)
    else
      render "car/show", status: :unprocessable_entity
    end
  end
end
