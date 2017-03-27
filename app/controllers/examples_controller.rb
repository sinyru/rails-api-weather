# frozen_string_literal: true
require 'net/http'

class ExamplesController < OpenReadController
  before_action :set_example, only: [:update, :destroy]

  # GET /examples
  # GET /examples.json
  def index
    api_key = ENV['API_KEY']
    uri = URI("http://api.openweathermap.org/data/2.5/weather?q=,us&appid=#{api_key}")
    @weather = Net::HTTP.get(uri)
    render json: @weather
  end

  # GET /examples/1
  # GET /examples/1.json
  def show
    location = params[:id]
    api_key = ENV['API_KEY']
    uri = URI("http://api.openweathermap.org/data/2.5/weather?q=#{location},us&appid=#{api_key}")
    @weather = Net::HTTP.get(uri)
    render json: @weather
  end

  # POST /examples
  # POST /examples.json
  def create
    @example = current_user.examples.build(example_params)

    if @example.save
      render json: @example, status: :created
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examples/1
  # PATCH/PUT /examples/1.json
  def update
    if @example.update(example_params)
      head :no_content
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examples/1
  # DELETE /examples/1.json
  def destroy
    @example.destroy

    head :no_content
  end

  def set_example
    @example = current_user.examples.find(params[:id])
  end

  def example_params
    params.require(:example).permit(:text)
  end

  private :set_example, :example_params
end
