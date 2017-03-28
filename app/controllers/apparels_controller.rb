# frozen_string_literal: true
class ApparelsController < ProtectedController
  before_action :set_apparel, only: [:show, :update, :destroy]

  # GET /apparels
  def index
    p current_user.id
    @apparels = current_user.apparels
    p @apparels.length
    render json: @apparels
  end

  # GET /apparels/1
  def show
    render json: @apparel
  end

  # POST /apparels
  def create
    @apparel = current_user.apparels.build(apparel_params)
    if @apparel.save
      render json: @apparel, status: :created
    else
      render json: @apparel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /apparels/1
  def update
    if @apparel.update(apparel_params)
      head :no_content
    else
      render json: @apparel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /apparels/1
  def destroy
    @apparel.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_apparel
    @apparel = current_user.apparels.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def apparel_params
    params.require(:apparel).permit(:name, :clothing_type)
  end

  private :set_apparel, :apparel_params
end
