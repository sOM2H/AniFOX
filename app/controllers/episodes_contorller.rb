class EpisodesController < ApplicationController

  before_action :set_anime, only:[:show, :edit, :update, :destroy]

  def index
    @events = Anime.all.sort_by{ |event| event.updated_at }.reverse
  end

  def show
  end

  def edit
  end

  def new
    @anime = Anime.new
  end

  private

  def set_anime
    @anime = Anime.find(params[:id])
  end

  def anime_params
    params.require(:event).permit(:title, :description, :address, :date)
  end
end
