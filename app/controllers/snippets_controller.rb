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
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
    if current_user.id.to_s == params[:user_id].to_s
    @snippet = Snippet.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def update
    if current_user.id.to_s == params[:user_id].to_s
      @snippet = Snippet.find(params[:id])
      if @snippet.update_attributes(snippet_params)
        redirect_to user_snippet_path
      else
        redirect_to 'edit'
      end
    end
  end

  def confirm_destroy
    redirect_to root_path unless current_user.id.to_s == params[:user_id]
  end

  def destroy
    if current_user.id.to_s == params[:user_id]
      @snippet = Snippet.find(params[:id])
      @snippet.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def snippet_params
    params.require(:snippet).permit(:title,:content,:language)
  end
end
