class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to @playlist
    else
      render :new
   end
  end

  def show
    @playlist = get_playlist
  end

  def edit
    @playlist = get_playlist
  end

  def update
    @playlist = get_playlist
      if @playlist.update_attributes(playlist_params)
        redirect_to @playlist
      else
        render :edit
      end
  end

  def destroy
    @playlist = get_playlist
    @playlist.destroy
    redirect_to playlists_path
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end

  def get_playlist
    Playlist.find(params[:id])
  end

end