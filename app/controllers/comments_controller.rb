class CommentsController < ApplicationController
  def create
    @temp = params[:id]
    Comment.create(params[:comment])
    redirect_to("/posts/#{@temp}")
  end
  def destroy
    @temp = Comment.find(params[:comment_id])
    @temp.destroy
    redirect_to("/posts/#{params[:post_id]}")
  end
end
