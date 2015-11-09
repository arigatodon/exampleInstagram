class CommentsController < ApplicationController
  load_and_authorize_resource
  def index
  	@post = Post.find(params[:post_id])
  	@comments = @post.comments
  end

 
  def create
  	@post = Post.find(params[:post_id])
  	# @comments = @post.comments


  	@comments = @post.comments.build(comment_params)
  	@comments.save

  	redirect_to @post
  end

	private

		def comment_params
			params.require(:comment).permit(:content)
		end

end