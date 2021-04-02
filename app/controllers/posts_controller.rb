class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
    @post.post_images.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:success] = "投稿に成功しました"
      redirect_to posts_path
    else
      flash[:danger] = "投稿に失敗しました。内容を確認してください"
      render :new
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @post_comment = PostComment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "更新が完了しました"
      redirect_to post_path(@post)
    else
      flash[:danger] = "更新に失敗しました、投稿内容を確認してください"
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def favorite
    favorites = Favorite.where(user_id: current_user.id).pluck(:post_id)
    @favorites = Post.find(favorites)
  end

  private

    def post_params
      params.require(:post).permit(:title, :caption, :color, post_images_images: [])
    end

end
