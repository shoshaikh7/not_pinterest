class CommentsController < ApplicationController
  def create
  @comment = Comment.new(comment_params)
    @comment.pin_id = params[:pin_id]
    @comment.save
    redirect_to pin_path(@comment.pin)
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end
