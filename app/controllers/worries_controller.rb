class WorriesController < ApplicationController
  before_action :set_worry, only: %i[show update destroy]
  before_action :set_user, only: %I[index]

  # GET /worries
  def index
    render json: @user.worries
  end

  # GET /worries/1
  def show
    render json: @worry
  end

  # POST /worries
  def create
    @worry = Worry.new(worry_params)

    if @worry.save
      render json: @worry, status: :created
    else
      render json: @worry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /worries/1
  def update
    if @worry.update(worry_params)
      render json: @worry
    else
      render json: @worry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /worries/1
  def destroy
    @worry.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_worry
    @worry = Worry.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  # Only allow a list of trusted parameters through.
  def worry_params
    params.require(:worry).permit(:description, :recording_url, :user_id)
  end
end
