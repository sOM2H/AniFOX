class AdnimesController < ApplicationController

  before_action :set_anime, only:[:show, :seasons]

  def index
    @events = Anime.all.sort_by(&:updated_at).reverse
  end

  def show
  end

  def seasons
    render json: @anime.seasons
  end

  private

  def set_anime
    @anime = Anime.find(params[:id])
  end

  def anime_params
    params.require(:event).permit(:title, :description, :address, :date)
  end
end
