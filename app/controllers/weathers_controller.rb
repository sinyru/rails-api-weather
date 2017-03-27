# frozen_string_literal: true
require 'net/http'

class WeathersController < ApplicationController
  # GET /weathers/1
  def show
    location = params[:id]
    api_key = ENV['API_KEY']
    uri = URI("http://api.openweathermap.org/data/2.5/weather?q=#{location},us&appid=#{api_key}")
    @weather = Net::HTTP.get(uri)
    render json: @weather
  end
end
