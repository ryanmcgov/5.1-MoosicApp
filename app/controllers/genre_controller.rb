class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to @genre
    else
      render :new
   end
  end

  def show
    @genre = get_genre
  end

  def edit
    @genre = get_genre
  end

  def update
    @genre = get_genre
      if @genre.update_attributes(genre_params)
        redirect_to @genre
      else
        render :edit
    end
  end

  def destroy
    @genre = get_genre
    @genre.destroy
    redirect_to genres_path
  end

  private

  def artist_params
    params.require(:genre).permit(:genre_name)
  end

  def get_genre
    Genre.find(params[:id])
  end

end