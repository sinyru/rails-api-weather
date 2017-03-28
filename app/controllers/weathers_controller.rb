# frozen_string_literal: true
require 'net/http'

class WeathersController < ApplicationController

  def index
    api_key = ENV['API_KEY']
    uri = URI("http://api.openweathermap.org/data/2.5/weather?zip=,us&appid=#{api_key}")
    @weather = Net::HTTP.get(uri)
    render json: @weather
  end
  # GET /weathers/boston
  def show
    location = params[:id]
    if location.is_a? Integer
      api_key = ENV['API_KEY']
      uri = URI("http://api.openweathermap.org/data/2.5/weather?zip=#{location},us&appid=#{api_key}")
      @weather = Net::HTTP.get(uri)
      render json: @weather
    elsif location.is_a? String
      api_key = ENV['API_KEY']
      uri = URI("http://api.openweathermap.org/data/2.5/weather?q=#{location},us&appid=#{api_key}")
      @weather = Net::HTTP.get(uri)
      render json: @weather
    end
  end
end
