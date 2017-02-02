class CommentsController < ApplicationController
    
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comments].permit(:name, :body ))
        
        redirect_to post_path(@post)
    end
    
    def destroy
         @post = Post.find(params[:post_id])
         @comment = @post.comments.find(params[:id])
         @coment.destroy
         
         redirect_to post_path(@post)
    end
    
end
