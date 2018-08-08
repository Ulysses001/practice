class PostsController < ApplicationController
    def index
        @posts = Post.all.order("created_at DESC")
#           @posts = Post.all
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        if @post.save        
            redirect_to @post
        else
            render "new"
        end
    end
    
    def show
        @post = post.find(params[:id])        
    end
    
    def edit
        @post = post.find(params[:id])       
    end
    
    def update
        @post = post.find(params[:id]) 
        if @post.update(params[:post] .permit(:title, :body))
            redirect_to @post
        else
            render "edit"
        end
    end
    
    def destroy
        @post = post.find(params[:id]) 
        @post.destroy
        
        redirect_to root_path
    end
    
    private
    def post_params
        params.require(:post).permit(:title, :body)       
    end    
    
end
