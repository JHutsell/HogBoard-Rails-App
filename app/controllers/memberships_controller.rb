class MembershipsController < ApplicationController
    
    def index
        @memberships = @current_student.memberships
    end

    def new
        @membership = Membership.new
        @clubs = Club.all
    end

    def create
        @membership = Membership.create(student_id: @student_id, membership_params)
        redirect_to student_path(@student_id)
    end

    private

    def membership_params
        params.require(:membership).permit(:club_id)
    end
end

