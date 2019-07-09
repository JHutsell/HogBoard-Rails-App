class ChatsController < ApplicationController
    before_action :find_chat, only: [:show, :edit, :update, :destroy]
    before_action :authorized

    def index 
        @chats = @current_student.chats
    end

    def show 

    end

    def new 
        @chat = Chat.new
    end
    
    def create
        params[:chat][:student_id] = @current_student.id
        @chat = Chat.create(chat_params)
        if @chat.valid?
            redirect_to chats_path
        else
            flash[:errors] = @chat.errors.full_messages
            redirect_to new_chat_path 
        end
    end

    def edit 

    end

    def update
        if @chat.update(chat_params)
            redirect_to chat_path(@chat)
        else 
            flash[:errors] = @chat.errors.full_messages
            redirect_to edit_chat_path(@chat)
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
