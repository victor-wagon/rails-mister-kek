class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render 'new'
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.where(cocktail_id: @cocktail.id)
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.update(cocktail_params)
      redirect_to
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.destroy
      redirect_to cocktails_path
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
