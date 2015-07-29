class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @snippet = Snippet.find(params[:id])
    @comment = Comment.new(comment_params)
    @comment.user = User.find(current_user.id)
    @comment.snippet = Snippet.find(params[:id])
    if @comment.save
      redirect_to snippet_path(params[:id])
    else

    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
