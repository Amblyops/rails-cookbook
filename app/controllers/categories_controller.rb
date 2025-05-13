class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    
  end

  def show
    @category = Category.find(params[:id])
   # redirect_to :back
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # def set_list
  #   @list = List.find(params[:id])
  # end

   def category_params
     params.require(:category).permit(:name)
   end
  # taken from watchlist solution
end
