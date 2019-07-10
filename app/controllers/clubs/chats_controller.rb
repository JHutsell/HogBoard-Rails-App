# require "club/chats_controller"

class Clubs::ChatsController < ApplicationController

    before_action :find_chat, only: [:show, :edit, :update, :destroy]
    before_action :authorized

    def index 
        @chats = @current_student.chats
    end

    def show 

    end

    def new 
        @chat = Chat.new
        @club_id = params[:club_id]
    end
    
    def create
        @chat = Chat.create(chat_params)
        params[:chat][:student_id] = @current_student.id
        params[:chat][:club_id] = @club_id
        if @chat.valid?
            redirect_to club_path(@chat.club_id)
        else
            flash[:errors] = @chat.errors.full_messages
            redirect_to new_club_chat_path 
        end
    end

    def edit 

    end

    def update
        if @chat.update(chat_params)
            params[:chat][:student_id] = @current_student.id
            params[:chat][:club_id] = @club_id
            redirect_to club_chat_path(@chat)
        else 
            flash[:errors] = @chat.errors.full_messages
            redirect_to edit_club_chat_path(@chat)
        end
    end

    def destroy
        # @chat = @current_user.chats.find(params[:id])
        @chat.destroy
        redirect_to chats_path
    end

    private 

    def find_chat
        @chat = Chat.find(params[:id])
    end

    def chat_params
        params.require(:chat).permit(:content, :student_id, :club_id)
    end
end
