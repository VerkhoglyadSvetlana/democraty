class CommentsController < ApplicationController
  def add_comment
  commentable_type = params[:commentable][:commentable]
  commentable_id = params[:commentable][:commentable_id]
  # Get the object that you want to comment
  commentable = Comment.find_commentable(commentable_type, commentable_id)

  # Create a comment with the user submitted content
  comment = Comment.new(params[:comment])
  # Assign this comment to the logged in user
  comment.user_id = session[:user].id

  # Add the comment
  commentable.comments << comment

  redirect_to :action => commentable_type.downcase,
    :id => commentable_id
end
end
