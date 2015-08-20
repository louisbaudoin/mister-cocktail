class DosesController < ApplicationController
  before_action :find_cocktail, only: [ :new, :create]

  def new
    @dose = Dose.new
  end

  def create
    # On a déjà @cocktail grace au before_action
      @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def destroy
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :cocktail, :ingredient)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
