class Api::V1::GroceryListsController < ApplicationController
  def index
    @grocery_lists = GroceryList.all

    render json: @grocery_lists
  end

  def show
    @grocery_list = GroceryList.find(params[:id])

    render json: @grocery_list
  end
end
