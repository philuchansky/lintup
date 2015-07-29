class LikesController < ApplicationController
  def create
    @snippet = Snippet.find(params[:id])

    @like = Like.new
    @like.user_id = current_user.id
    @like.snippet_id = @snippet.id

    if @like.save
      redirect_to snippet_path(@snippet)
    end
  end

  def destroy
    @snippet = Snippet.find(params[:id])
    @like = Like.find_by snippet_id: @snippet.id, user_id: current_user.id
    if @like.destroy
      redirect_to snippet_path(@snippet)
    end
  end
end
