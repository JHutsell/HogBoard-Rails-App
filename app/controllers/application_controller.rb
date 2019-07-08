class ApplicationController < ActionController::Base
    before_action :setup_auth 

    def setup_auth 
        @student_id = session[:student_id]
        @logged_in = !!@student_id
        if @logged_in
            @current_student = Student.find(@student_id)
        end
    end

    def authorized
        unless @logged_in
          flash[:message] = "Must log in to proceed."
          return redirect_to login_path
        end
      end





end
