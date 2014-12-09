class SubgenreController < ApplicationController
  
before_action :find_genre
     def index
	#@subgenres = Subgenre.all 
	 #@subgenres = Subgenre.where(:genre_id => @genre.id) 
	@subgenres = @genre.subgenres
     end

  def show
  end

     private
	def subgenre_params
	params.require(:subgenres).permit(:genre_id, :name)
	end

	def find_genre
	if params[:genre_id]
	@genre = Genre.find(params[:genre_id])
	end
     end
end

