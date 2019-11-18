class SeasonsController < ApplicationController
  before_action :set_anime, only: [:index]

  def index
    render json: @anime.seasons
  end

  private

  def set_anime
    @anime = Anime.find(params[:anime_id])
  end
end
