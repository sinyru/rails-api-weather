# frozen_string_literal: true
require 'net/http'

class WeathersController < ApplicationController

  def index
    # api_key = ENV['API_KEY']
    # secret_key = ENV['SECRET_KEY']
    # @response = RestClient::Request.execute(
    #   method: :get,
    #   url: "https://#{api_key}:#{secret_key}@one-condoms.myshopify.com/admin/orders.json?limit=250&page=1"
    # )
    # render json: @response

    AddressValidator.configure do |config|
      config.key = ENV['UPS_KEY']
      config.username = ENV['UPS_USERNAME']
      config.password = ENV['UPS_PASSWORD']
      config.maximum_list_size = 5
    end

    @address = AddressValidator::Address.new(
      street1: '42 seaport st',
      city: 'quincy',
      state: 'ma',
      zip: '02169',
      country: 'US'
    )

    validator = AddressValidator::Validator.new
    @response = validator.validate(@address)

    render json: @response
  end

  # GET /weathers/boston
  def show
    location = params[:id]
    if location.is_a? Integer

    elsif location.is_a? String

    end
  end

  def location_params
    params.require(:location).permit(:street, :city, :state, :zip, :country)
  end

  private :location_params
end
