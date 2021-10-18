class StudentsController < ApplicationController

  def index
    students = 
    if (params.include?(params[:name]))
      Student.all.where( "first_name = ? OR last_name = ?", params[:name], params[:name] ) 
    else
      byebug
      Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
