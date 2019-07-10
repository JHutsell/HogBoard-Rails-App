class SyllabusesController < ApplicationController
    def index
        @syllabuses = @current_student.syllabuses
    end

    def new
        @syllabus = Syllabus.new
        @courses = Course.all
    end

    def create
        params[:syllabus][:student_id] = @current_student.id
        @syllabus = Syllabus.create(syllabus_params)
        redirect_to student_path(@current_student)
    end

    private

    def syllabus_params
        params.require(:syllabus).permit(:student_id, :course_id)
    end
end
