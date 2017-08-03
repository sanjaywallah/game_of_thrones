class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
      @house = House.find(params[:id])
  end

  def new
    @house = House.new
end

  def edit
    @house = House.find(params[:id])
  end
end
