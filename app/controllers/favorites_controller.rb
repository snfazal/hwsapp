class FavoritesController < ApplicationController

  def create
    wine = Wine.find(fav_params[:id])
    current_user.favorited_wines.push(wine)

    if current_user.save
      render json: { status: 201, favorites: current_user.favorited_wines }
    else
      render json: { status: 422, err: current_user.errors}
    end
  end

  def destroy
    fav = current_user.favorites.where(wine_id: fav_params[:id])
    Favorite.destroy(fav)

    render json: {status: 204,
      message: 'resource deleted succesfully', favorited_wines: current_user.favorited_wines
    }
  end

  def index
    render json: { status: 200, favorites: current_user.favorited_wines }
  end

  def fav_params
    params.required(:wine).permit(:id)
  end
end
