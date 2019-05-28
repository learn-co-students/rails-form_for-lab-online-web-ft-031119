class StudentsController < ApplicationController

  def show
    @students = Student.find(params[:id])
  end

  def new
    @students = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def edit
		@students = Student.find(params[:id])
	end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
	end

  private

  def student_params
    params.require(:student).permit!
  end
end
