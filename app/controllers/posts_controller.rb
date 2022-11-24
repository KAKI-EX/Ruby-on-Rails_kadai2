class PostsController < ApplicationController
  before_action :authenticate_user! #ログインユーザーのみ実行可能

  def index

    @posts_current_user = current_user.posts
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(
      :user_id,
      :room_name,
      :room_price,
      :room_info,
      :room_address_postcode,
      :room_address_prefecture,
      :room_address_town_village,
      :room_address_other,
      :room_photo
    ))
    if @post.save
      redirect_to :home_index
    else
      render "new"
    end
  end

  def show
    @post_current_user = current_user.posts
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post_current_user = current_user.posts
    if @post_current_user.update(params.require(:post).permit(
      :user_id,
      :room_name,
      :room_price,
      :room_info,
      :room_address_postcode,
      :room_address_prefecture,
      :room_address_town_village,
      :room_address_other,
      :room_photo
    ))
      redirect_to posts_path
    else
      render "edit"
    end
  end

  def destroy
  end

end
