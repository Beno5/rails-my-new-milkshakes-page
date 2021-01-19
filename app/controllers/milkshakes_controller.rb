class MilkshakesController < ApplicationController
  before_action :find_index, only: %i[show edit update destroy]
  def index
    @milkshakes = policy_scope(Milkshake).order(created_at: :desc)
  end

  def show
    @dose = Dose.new
    authorize @milkshake
  end

  def new
    @milkshake = Milkshake.new
    authorize @milkshake
  end

  def create
    @milkshake = Milkshake.new(milkshake_params)
    authorize @milkshake
    @milkshake.user = current_user
    if @milkshake.save
      redirect_to milkshake_path(@milkshake)
    else
      render :new
    end
  end

  def edit
    authorize @milkshake
  end

  def update
    authorize @milkshake
    @milkshake.update(milkshake_params)
    redirect_to milkshake_path(@milkshake)
  end

  def destroy
    authorize @milkshake
    @milkshake.destroy
    redirect_to milkshakes_path
  end

  private 
  
  def find_index
    @milkshake = Milkshake.find(params[:id])
  end

  def milkshake_params
    params.require(:milkshake).permit(:name, :description, :photo)
  end

end
