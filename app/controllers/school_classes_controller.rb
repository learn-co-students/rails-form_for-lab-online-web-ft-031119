class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new

  end

  def create
    @school_class = SchoolClass.create(post_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = get_school_class
  end

  def edit
    @school_class = get_school_class
  end

  def update
    @school_class = get_school_class
    @school_class.update(post_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  private

  def get_school_class
    SchoolClass.find(params[:id])
  end

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
end
