class PostsController < ApplicationController
  load_and_authorize_resource
  def index
    @posts = Post.all
    @post = Post.last
  end

  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.js
      format.html { index; render 'index' }
    end
  end
end
