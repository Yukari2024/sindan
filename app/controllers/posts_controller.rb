class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

    def new
        @posts = Post.new
      end

      def index
        @posts = Post.all

        if params[:search] == nil
          @posts= Post.all
        elsif params[:search] == ''
          @posts= Post.all
        else
          #部分検索
          @posts = Post.where("category LIKE ?",
          "%#{params[:search]}%")
        end
  
    end
    
      def create
        posts = Post.new(posts_params)

        posts.user_id = current_user.id

        if posts.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def edit
        @posts = Post.find(params[:id])
      end

      def update
        post = Post.find(params[:id])
        if post.update(posts_params)
          redirect_to :action => "show", :id => post.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to action: :index
      end

      
      def show
        @posts = Post.find(params[:id])
      end
      

      
    
   
      

      private
      def posts_params
        params.require(:post).permit(:image, :kansou, :category )
      end
end
