class DepartmentsController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    Department.all
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end




  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @department = Department.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def department_params
    params.require(:department).permit(:name, :query)
  end




end
