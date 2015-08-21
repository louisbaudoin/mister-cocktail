class DosesController < ApplicationController
  before_action :find_cocktail, only: [ :new, :create, :destroy]

  def new
    @ingredients = Ingredient.all
    @dose = Dose.new
  end

  def create
    # On a déjà @cocktail grace au before_action
    # @ingredients = Ingredient.all
    # raise

    @ingredients = Ingredient.all
    @dose = Dose.create(dose_params)
    # @dose = @cocktail.doses.build(dose_params)
    @dose.cocktail = @cocktail

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
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
