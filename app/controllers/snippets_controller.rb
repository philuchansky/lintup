class SnippetsController < ApplicationController
  before_action :authorize, only: [:new,:create,:edit,:update,:destroy]

  def index
    @user = User.find(params[:user_id])
  end

  def index_global
    @snippets = Snippet.all
  end

  def show
    @snippet = Snippet.find(params[:id])
    @comment = Comment.new
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    @snippet.user = current_user
    if @snippet.save
      redirect_to user_path(@snippet.user)
    else
      redirect_to root_path
    end
  end

  def edit
    @snippet = Snippet.find(params[:id])
    @language_mode = language_modes.find {|language| language[:language_mode] == @snippet.language}[:language_mode]
    redirect_to root_path unless current_user.id == @snippet.user.id
  end

  def update
    @snippet = Snippet.find(params[:id])
    if current_user.id == @snippet.user.id
      if @snippet.update_attributes(snippet_params)
        redirect_to snippet_path
      else
        redirect_to edit_snippet_path
      end
    end
  end

  def confirm_destroy
    @user= Snippet.find(params[:id]).user
    redirect_to root_path unless current_user.id == Snippet.find(params[:id]).user.id
  end

  def destroy
    @snippet = Snippet.find(params[:id])
    if current_user.id == @snippet.user.id
      @snippet.destroy
      redirect_to user_path(@snippet.user)
    else
      redirect_to root_path
    end
  end

  private
  def snippet_params
    params.require(:snippet).permit(:title,:content,:language)
  end
end
