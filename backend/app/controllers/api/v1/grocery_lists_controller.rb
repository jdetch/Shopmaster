class Api::V1::GroceryListsController < ApplicationController

  def index
    @grocery_lists = GroceryList.all
    render json: @grocery_lists
  end

  def create
    grocery_list = GroceryList.new(grocery_list_params)
    grocery_list.save!

    if grocery_list.new_record?
      render json: { errors: grocery_list.errors.messages }, status: 422
    else
      render json: grocery_list, status: 201
    end
  end


  private

  def grocery_list_params
    params.require(:grocery_list).permit(
      :name,
      :description
    )
  end

end
