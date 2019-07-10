class CoursesController < ApplicationController
    before_action :find_course, only: [:show, :edit, :update, :destroy]
    before_action :authorized

    def index
        @courses = Course.all
    end

    def show
        @students = @course.students
    end

    def new
        @course = Course.new
    end

    def create 
        @course = Course.create(course_params)
        if @course.valid?
            redirect_to courses_path
        else
            flash[:errors] = @course.errors.full_messages
            redirect_to new_course_path 
        end
    end

    private

    def find_course
        @course = Course.find(params[:id])
    end

    def course_params
        params.require(:course).permit(:name, :description, :grade, :student_id, :professor_id)
    end
end
