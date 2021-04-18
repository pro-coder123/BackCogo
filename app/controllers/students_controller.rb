class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def destroy
    student = Student.find(params[:id])
    student.delete
    head :no_content
  end

  def create
    student = Student.new(params.require(:student).permit(:username, :email, :name))
    student.save!
  end
end
