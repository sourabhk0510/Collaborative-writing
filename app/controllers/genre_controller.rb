class GenreController < ApplicationController
  
  def index
 @genres = Genre.all
end

  def show
  end

  private
	def genre_params
	params.require(:genres).permit(:title)
	end


end
