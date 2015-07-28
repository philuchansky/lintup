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
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
