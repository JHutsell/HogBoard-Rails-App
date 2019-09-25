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
        if @membership.valid?
            redirect_to student_path(@current_student)
        else
            flash[:message] = "You have already joined this club!"
            redirect_to new_membership_path
        end
    end

    def destroy
        @membership = Membership.find(params[:id])
        @membership.destroy
        redirect_to memberships_path
    end

    private

    def membership_params
        params.require(:membership).permit(:student_id, :club_id)
    end
    
end

