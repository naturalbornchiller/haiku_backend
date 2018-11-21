class HaikuController < ApplicationController
  before_action :set_haiku, only: [:show, :update, :destroy]

  # GET /haiku
  def index
    @haiku = Haiku.all

    render json: @haiku
  end

  # GET /haiku/1
  def show
    render json: @haiku
  end

  # POST /haiku
  def create
    @haiku = Haiku.new(haiku_params)

    if @haiku.save
      render json: @haiku, status: :created, location: @haiku
    else
      render json: @haiku.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /haiku/1
  def update
    if @haiku.update(haiku_params)
      render json: @haiku
    else
      render json: @haiku.errors, status: :unprocessable_entity
    end
  end

  # DELETE /haiku/1
  def destroy
    @haiku.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haiku
      @haiku = Haiku.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def haiku_params
      params.require(:haiku).permit(:title, :content)
    end
end
