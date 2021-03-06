class Api::CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)

        if @comment.save
            render json: @comment
        else
            render json: @comment.errors.full_messages, status: 422
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:name, :content, :user_id)
    end
end
