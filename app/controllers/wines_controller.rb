class WinesController < ApplicationController
  before_action :authorize_wine, only: [:update, :delete]

  def create
    puts wine_params
    wine = current_user.wines.new(wine_params)
    puts wine
    if wine.save
      render json: { status: 201, wine: wine}
    else
      render json: { status: 422, user: wine.errors}
    end
  end

  def show
    render json: { status: 200, wine: Wine.find(params[:id]) }
  end

  def index
    render json: { status: 200, wines: Wine.all }
  end

  def update
    wine = Wine.find(params[:id])

    if wine.update(wine_params)
      render json: { status: 201, wine: wine}
    else
      render json: { status: 422, user: wine.errors}
    end
  end

  def destroy
    Wine.destroy(params[:id])

    render json: {status: 204,
      message: 'resource deleted succesfully', wine: current_user.wines
    }
  end

  def wine_params
    params.required(:wine).permit( :name, :kind, :country, :region, :rating, :description, :image_url, :user_id)
  end
end
