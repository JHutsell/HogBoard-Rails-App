class StudentsController < ApplicationController

    def index 
        @shared_house = @current_student.shared_house
    end

    def show 
        find_student
        @chats = @current_student.chats
    end 

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        if @student.valid?
            session[:student_id] = @student.id
            redirect_to student_path(@student)
        else
            redirect_to new_student_path
        end
    end


    private

    def find_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:name, :username, :password, :year, :house, :gpa, :patronus, :bloodstatus)
    end

end
