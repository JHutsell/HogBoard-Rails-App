class ClubsController < ApplicationController
    before_action :find_club, only: [:show, :edit, :update, :destroy]

    def index
        @clubs = Club.all
    end

    def show
        @students = @club.students
        @chats = @club.chats
    end

    def new
        @course = Club.new
    end

    def create 
        @club = Club.create(club_params)
        if @club.valid?
            redirect_to clubs_path
        else
            flash[:errors] = @club.errors.full_messages
            redirect_to new_club_path 
        end
    end

    private

    def find_club
        @club = Club.find(params[:id])
    end

    def course_params
        params.require(:club).permit(:name, :description, :professor_id)
    end
end
