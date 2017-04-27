class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)
    redirect_to root_path
  end

  def show
    @employee = Employee.find(params[:id])
    render :show
  end


  private

  def employee_params
    params.require(:employee).permit(:title, :first_name, :last_name)
  end
end
