class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save

    else

    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
