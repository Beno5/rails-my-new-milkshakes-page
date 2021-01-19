class DosesController < ApplicationController
  before_action :find_milkshake, only: [:new, :create]
  def new
    @dose = Dose.new
    @dose.milkshake = @milkshake
    authorize @dose
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.milkshake = @milkshake
    authorize @dose
    if @dose.save
      redirect_to milkshake_path(@milkshake)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    authorize @dose
    @milkshake = @dose.milkshake
    @dose.destroy
    redirect_to milkshake_path(@milkshake)
  end
  
  private

  def dose_params
    params.require(:dose).permit(:name, :ingredient_id, :milkshake_id)
  end

  def find_milkshake
    @milkshake = Milkshake.find(params[:milkshake_id])
  end
end
