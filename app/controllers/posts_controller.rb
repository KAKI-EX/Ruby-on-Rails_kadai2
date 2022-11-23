class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:user_id,
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
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
