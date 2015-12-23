class PostsController < ApplicationController
  impressionist
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
  @email = current_user.try(:email)
  if params[:category].blank?
    @posts = Post.search(params[:search]).paginate(page: params[:page], per_page: 10)
  else
    @category_id = Category.find_by(name: params[:category]).id
    @posts = Post.where(category_id: @category_id).paginate(page: params[:page], per_page: 10)
  end
  end
  def show
  end
  def new
    @post = current_user.posts.build
  end
  def edit
  end
  def create
    @post = current_user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    def set_post
      @post = Post.find(params[:id])
      @comments = @post.comments.all
      @comment = @post.comments.build
    end
    def post_params
      params.require(:post).permit(:title, :description, :video, :category_id)
    end
    def video
      self.link.split('/').last if self.link
    end
end
