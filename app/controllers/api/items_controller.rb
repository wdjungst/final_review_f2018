class Api::ItemsController < ApplicationController
  def index
    render json: Item.all
  end

  def create
    item_params = params.require(:item).permit(:cost, :description, :item_type)
    
    render json: Item.create(item_params)
  end
end
