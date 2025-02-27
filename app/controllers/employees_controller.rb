class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
    @employee = Employee.new
    @dogs = Dog.all
    end

    def edit
        @employee = Employee.find(params[:id])
        @dogs = Dog.all
    end

    def update
        @employee = Employee.find(params[:id])
        @employee = Employee.update(employee_params)
        if @employee.valid?
            redirect_to @employee
        else
            flash[:errors] = @employee.errors.full_messages
            redirect_to edit_employee_path
        end
    end

    def create
        @employee = Employee.create(employee_params)
        if @employee.valid?
            redirect_to @employee
        else
            flash[:errors] = @employee.errors.full_messages
            redirect_to new_employee_path
        end
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end


end
