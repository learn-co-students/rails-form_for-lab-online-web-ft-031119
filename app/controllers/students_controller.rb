class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new

  end

  def create
    @student = Student.create(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    @student = get_student
  end

  def edit
    @student = get_student
  end

  def update
    @student = get_student
    @student.update(post_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  private

  def get_student
    Student.find(params[:id])
  end

  def post_params(*args)
    params.require(:student).permit(*args)
  end

end
