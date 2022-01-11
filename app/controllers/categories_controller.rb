class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @mini_categories = MiniCategory.where(category_id: @category.id)
  end


  private
  def category_params
    params.require(:category).permit(:name,:user_id)
  end
end
