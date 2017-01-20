class CommentsController < ApplicationController
  def create
  	blog = Blog.find(params[:blog_id])
  	comment = Comment.new(comment_params)
  	comment.blog_id = blog.id
  	comment.save
  	redirect_to blog
  end

  def destroy
  end

  private
  def comment_params
  	params.require(:comment).permit(:content, :blog_id)
  end
end
