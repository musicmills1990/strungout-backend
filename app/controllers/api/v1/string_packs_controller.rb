class Api::V1::StringPacksController < ApplicationController
  before_action :set_stringpack, only: [:show, :update, :destroy]

  def index
    @stringpacks = StringPack.all
    render json: @stringpacks
  end

  # GET /stringpacks/1
  def show
    render json: @stringpack
  end

  # POST /stringpacks
  def create
    @stringpack = StringPack.new(stringpack_params)

    if @stringpack.save
      render json: @stringpack, status: :created, location: @stringpack
    else
      render json: @stringpack.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stringpacks/1
  def update
    if @stringpack.update(stringpack_params)
      render json: @stringpack
    else
      render json: @stringpack.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stringpacks/1
  def destroy
    @stringpack.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stringpack
      @stringpack = StringPack.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stringpack_params
      params.require(:stringpack).permit(:guage, :brand, :model, :price)
    end
end
