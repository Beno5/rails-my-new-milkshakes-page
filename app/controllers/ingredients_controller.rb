class IngredientsController < ApplicationController
  before_action :find_index, only: %i[new create]
  def index
    @ingredients = Ingredient.all
  end

  def show
    @milkshake = Milkshake.find(params[:id])
    @ingredients = Ingredient.where(milkshake_id: @milkshake )
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.milkshake = @milkshake
    if @ingredient.save
      redirect_to milkshake_path(@milkshake)
    else
      render :new
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @milkshake = @ingredient.milkshake
    @ingredient.destroy
    redirect_to milkshake_path(@milkshake)
  end

  private

  def find_index
    @milkshake = Milkshake.find(params[:milkshake_id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:milkshake_id, :name)
  end
end
