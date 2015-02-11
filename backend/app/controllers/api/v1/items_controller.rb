class Api::V1::ItemsController < ApplicationController

  def index
    @items = Item.all
    render json: @items
  end

  def create
    item = Item.new(item_params)

    if item.save
      render json: item, status: 201
    else
      render json: { errors: item.errors.messages }, status: 422
    end
  end


  private

  def item_params
    params.require(:item).permit(
      :name,
      :quantity,
      :grocery_list_id
    )
  end
end
