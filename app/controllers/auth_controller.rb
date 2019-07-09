class AuthController < ApplicationController 


    def new 
    end 

    def create
        @student = Student.find_by(username: params[:username])
        if @student && @student.authenticate(params[:password])
          flash[:message] = "Logging in #{@student.name}."
          session[:student_id] = @student.id
          redirect_to student_path(@student)
        else
          flash[:message] = "Invalid Username or Password."
          redirect_to "/login"
        end
    end


  def destroy
    session[:student_id] = nil
    redirect_to login_path
  end

  





end