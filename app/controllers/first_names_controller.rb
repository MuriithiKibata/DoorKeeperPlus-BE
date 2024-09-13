class FirstNamesController < ApplicationController
  before_action :set_first_name, only: %i[ show update destroy ]

  # GET /first_names
  def index
    @first_names = FirstName.all

    render json: @first_names
  end

  # GET /first_names/1
  def show
    render json: @first_name
  end

  # POST /first_names
  def create
    @first_name = FirstName.new(first_name_params)

    if @first_name.save
      render json: @first_name, status: :created, location: @first_name
    else
      render json: @first_name.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /first_names/1
  def update
    if @first_name.update(first_name_params)
      render json: @first_name
    else
      render json: @first_name.errors, status: :unprocessable_entity
    end
  end

  # DELETE /first_names/1
  def destroy
    @first_name.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_name
      @first_name = FirstName.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def first_name_params
      params.require(:first_name).permit(:last_name, :organisation_id, :fingerprint, :admission_number, :email, :phone_number)
    end
end
