require "open-uri"

class FlatsController < ApplicationController
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
  before_action :fetch_flats

  def index
  end

  def show
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
  end

  private

  def fetch_flats
    @flats = JSON.parse(open(FLATS_URL).read)
  end
end
