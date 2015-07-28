class SnippetsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def index_global
    @snippets = Snippet.all
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    @snippet.user = current_user
    if @snippet.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def update
    @snippet = Snippet.find(params[:id])
    if @snippet.update_attributes(snippet_params)
      redirect_to user_snippet_path
    else
      redirect_to 'edit'
    end

  end

  def destroy
  end

  private
  def snippet_params
    params.require(:snippet).permit(:title,:content,:language)
  end
end
