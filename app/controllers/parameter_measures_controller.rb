class ParameterMeasuresController < ApplicationController
  before_action :set_parameter_measure, only: [:show, :update, :destroy]

  # GET /parameter_measures
  def index
    @parameter_measures = ParameterMeasure.all

    render json: @parameter_measures
  end

  # GET /parameter_measures/1
  def show
    render json: @parameter_measure
  end

  # POST /parameter_measures
  def create
    @parameter_measure = ParameterMeasure.new(parameter_measure_params)

    if @parameter_measure.save
      render json: @parameter_measure, status: :created, location: @parameter_measure
    else
      render json: @parameter_measure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parameter_measures/1
  def update
    if @parameter_measure.update(parameter_measure_params)
      render json: @parameter_measure
    else
      render json: @parameter_measure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parameter_measures/1
  def destroy
    @parameter_measure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parameter_measure
      @parameter_measure = ParameterMeasure.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parameter_measure_params
      params.require(:parameter_measure).permit(:name, :unit, :comment)
    end
end
