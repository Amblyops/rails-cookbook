class BookmarksController < ApplicationController
#   def show
# #    @bookmark = Bookmark.find
#   end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmark_path(@bookmark)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # def set_list
  #   @list = List.find(params[:id])
  # end

   def bookmark_params
     params.require(:bookmark).permit(:name)
   end
  # taken from watchlist solution
end
