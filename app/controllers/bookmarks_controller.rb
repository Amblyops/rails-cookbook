class BookmarksController < ApplicationController
 before_action :set_bookmark, only: :destroy
 before_action :set_category, only: [:new, :create]
 # WHY ONLY DESTROY WHY NOT FIND?

  # # def show
  #   @bookmark = Bookmark.find.(params[:id])
  # end

  def new
#    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
  end

  def create
 #   @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.category = @category
    if @bookmark.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@bookmark.category)
  end

  private

   def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :recipe_id) #, :category_id)
  end
  # taken from watchlist solution
end
