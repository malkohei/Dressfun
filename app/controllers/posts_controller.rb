class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
    @post.post_images.build
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "投稿に成功しました"
      redirect_to posts_path
    else
      flash[:notice] = "投稿に失敗しました。内容を確認してください"
      render :new
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :caption, :color, post_images_images: [])
  end

end
