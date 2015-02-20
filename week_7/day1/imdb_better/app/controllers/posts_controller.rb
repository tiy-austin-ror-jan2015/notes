class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authorized!, only: [:show, :edit, :update, :destroy]

  def index
    @user_posts = current_user.posts.paginate(page: params[:page], per_page: 15)
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:user_id])
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to user_posts_path(current_user, @post), notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy(post_params)
  end

  private

  def set_post
    @post = Post.find(params[:user_id])
  end

  def post_params
    params.require(:post).permit(:user_id, :movie_title, :clip_url, :description, :poster_image)
  end
end
