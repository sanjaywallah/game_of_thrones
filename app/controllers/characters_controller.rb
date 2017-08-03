class CharactersController < ApplicationController
  def new
    @house = House.find(params[:house_id])
    @character = @house.characters.new
  end

  def show
      @character = Character.find(params[:id])
      @house = @character.house
  end

  def edit
    @character = Character.find(params[:id])
    @house = @character.house
  end
end
