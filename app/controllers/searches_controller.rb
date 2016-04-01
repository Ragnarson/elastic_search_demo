class SearchesController < ApplicationController
  def index
    @users  = User.all
    @houses = House.all
  end

  def create
  end
end
