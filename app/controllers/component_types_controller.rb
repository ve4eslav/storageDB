class ComponentTypesController < ApplicationController
  before_action :set_component_type, only: [:show, :update, :destroy]

  # GET /component_types
  def index
    @component_types = ComponentType.all

    render json: @component_types
  end

  # GET /component_types/1
  def show
    render json: @component_type
  end

  # POST /component_types
  def create
    @component_type = ComponentType.new(component_type_params)

    if @component_type.save
      render json: @component_type, status: :created, location: @component_type
    else
      render json: @component_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /component_types/1
  def update
    if @component_type.update(component_type_params)
      render json: @component_type
    else
      render json: @component_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /component_types/1
  def destroy
    @component_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_type
      @component_type = ComponentType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def component_type_params
      params.require(:component_type).permit(:name, :label, :comment, :subtype_id, :user_id)
    end
end
