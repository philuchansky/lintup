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

  def show

  end

  def destroy
    @comment = Comment.find(params[:id])

    #only allow commenter OR owner of post that has the comment to delete comment:
    @comment.destroy if current_user.id == @comment.user.id || current_user.id == @comment.snippet.user.id
    redirect_to params[:call_back_url]
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
