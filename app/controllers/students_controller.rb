class StudentsController < ApplicationController

    def index 
        @shared_house = @current_student.shared_house
    end

    def show 
        find_student
    end 


    private

    def find_student
        @student = Student.find_by(params[:id])
    end

    def student_params
        params.require(:student).permit(:name, :username, :password, :year, :house, :gpa, :patronus, :bloodstatus)
    end

end
