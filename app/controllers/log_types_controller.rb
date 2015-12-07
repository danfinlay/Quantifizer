class LogTypesController < ApplicationController
  before_action :set_log_type, only: [:show, :update, :destroy]

  # GET /log_types
  # GET /log_types.json
  def index
    @log_types = LogType.all

    render json: @log_types
  end

  # GET /log_types/1
  # GET /log_types/1.json
  def show
    render json: @log_type
  end

  # POST /log_types
  # POST /log_types.json
  def create
    @log_type = LogType.new(log_type_params)

    if @log_type.save
      render json: @log_type, status: :created, location: @log_type
    else
      render json: @log_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /log_types/1
  # PATCH/PUT /log_types/1.json
  def update
    @log_type = LogType.find(params[:id])

    if @log_type.update(log_type_params)
      head :no_content
    else
      render json: @log_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /log_types/1
  # DELETE /log_types/1.json
  def destroy
    @log_type.destroy

    head :no_content
  end

  private

    def set_log_type
      @log_type = LogType.find(params[:id])
    end

    def log_type_params
      params.require(:log_type).permit(:title, :description)
    end
end
