class FavoritesController < ApplicationController
  def index
  	@favorite = Favorite.all
  end

  def destroy
    Favorite.find(params[:id]).delete
    redirect_to favorites_path
  end
end