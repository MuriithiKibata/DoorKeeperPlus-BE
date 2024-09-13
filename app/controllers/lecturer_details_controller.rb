class LecturerDetailsController < ApplicationController
  before_action :set_lecturer_detail, only: %i[ show update destroy ]

  # GET /lecturer_details
  def index
    @lecturer_details = LecturerDetail.all

    render json: @lecturer_details
  end

  # GET /lecturer_details/1
  def show
    render json: @lecturer_detail
  end

  # POST /lecturer_details
  def create
    @lecturer_detail = LecturerDetail.new(lecturer_detail_params)

    if @lecturer_detail.save
      render json: @lecturer_detail, status: :created, location: @lecturer_detail
    else
      render json: @lecturer_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lecturer_details/1
  def update
    if @lecturer_detail.update(lecturer_detail_params)
      render json: @lecturer_detail
    else
      render json: @lecturer_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lecturer_details/1
  def destroy
    @lecturer_detail.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecturer_detail
      @lecturer_detail = LecturerDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lecturer_detail_params
      params.require(:lecturer_detail).permit(:phone_number, :email, :rating, :lecturer_id)
    end
end
