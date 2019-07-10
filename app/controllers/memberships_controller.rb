class MembershipsController < ApplicationController
    before_action :authorized
    
    def index
        @memberships = @current_student.memberships
    end

    def new
        @membership = Membership.new
        @clubs = Club.all
    end

    def create
        params[:membership][:student_id] = @current_student.id
        @membership = Membership.create(membership_params)
        redirect_to student_path(@current_student)
    end

    private

    def membership_params
        params.require(:membership).permit(:student_id, :club_id)
    end
end

