class Api::V1::GuitarsController < ApplicationController
  before_action :set_guitar, only: [:show, :update, :destroy]

  def index
    if logged_in?
      @guitars = current_user.guitars
      render json: GuitarSerializer.new(@guitars)
    else
      render json: {
        error: "You must be logged in to see your guitar"
      }
    end
  end

  # GET /guitars/1
  def show
    # render json: @guitar
    guitar_json = GuitarSerializer.new(@guitar).serialized_json
    render json: guitar_json
  end

  # POST /guitars
  def create
    @guitar = Guitar.new(guitar_params)
    if @guitar.save
      session[:user_id] = @guitar.user_id
      render json: GuitarSerializer.new(@guitar), status: :created
    else
      render json: @guitar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /guitars/1
  def update
    if @guitar.update(guitar_params)
      render json: @guitar
    else
      render json: @guitar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /guitars/1
  def destroy
    @guitar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guitar
      @guitar = Guitar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guitar_params
      params.require(:guitar).permit(:guitar_type, :brand, :model, :color, :user_id)
    end
end
