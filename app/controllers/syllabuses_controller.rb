class SyllabusesController < ApplicationController
    before_action :authorized

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
        if @syllabus.valid?
            redirect_to student_path(@current_student)
        else
            flash[:message] = "You have already registered for this class!"
            redirect_to new_syllabus_path
        end
    end

    def destroy
        @syllabus = Syllabus.find(params[:id])
        @syllabus.destroy
        redirect_to syllabuses_path
    end

    private

    def syllabus_params
        params.require(:syllabus).permit(:student_id, :course_id)
    end
    
end
