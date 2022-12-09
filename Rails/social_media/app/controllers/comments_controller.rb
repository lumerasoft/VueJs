class CommentsController < ApplicationController
def index
   @comment=Comment.all 
end

def show
    @comment=Comment.find(params[:id])
end   

def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
end

  private
    def comment_params
      params.require(:comment).permit(:comments)
    end

end