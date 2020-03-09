class CommentsController < ApplicationController
  before_action :set_post
  before_action :set_comment, only: [:destroy]

  def create
    @comment = @post.comments.create(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to @post
    else
      render edit_post(@post)
    end
  end

  def destroy
    if @comment.destroy
      redirect_to @post
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_post
    @post = Post.friendly.find(params[:post_id])
  end

  def set_comment
    set_post
    @comment = @post.comments.find(params[:id])
  end
end
