class PostsController < ApplicationController

    # "new" action
    def new
    end

    # "create" action
    def create
        @post = Post.new(post_params)
        @post.save
        redirect_to @post
    end

    def show
        @post = Post.find(params[:id])
    end

    def index
        @posts = Post.all
    end

    private
        def post_params
            params.require(:post).permit(:title, :text)
        end

end
