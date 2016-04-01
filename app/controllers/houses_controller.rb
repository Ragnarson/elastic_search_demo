class HousesController < ApplicationController
  def create
    House.create(house_params)
    redirect_to root_path
  end

  private

  def house_params
    params.require(:house).permit(:city, :information)
  end
end
