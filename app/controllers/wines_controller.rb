class WinesController < ApplicationController

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


def wine_params
  params.required(:wine).permit(:name, :kind, :country, :region, :rating, :description, :user_id)
end
end
