class WishlistsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = current_user
    @hike = Hike.find(params[:user_hike][:hike_id])
    if UserHike.exists?(user: @user, hike: @hike)
      @list =
      @existing = UserHike.where(user: @user, hike: @hike)
      flash[:notice] = "#{@hike.name} is already on one of your lists."
      redirect_to user_hikes_path
    else
      @new_user_hike = UserHike.new(user: @user, hike: @hike, list: "wishlist")
      if @new_user_hike.save
        flash[:notice] = "#{@hike.name} has been added to your Wishlist."
        redirect_to user_hikes_path
      else
        flash[:alert] = "#{@hike.name} was not added to your list."
        render hike_path(@hike)
      end
    end
  end

  def update
    @user_hike = UserHike.find(params[:id])
    @user_hike.update(list: "my_hikes")
    if @user_hike.save
      flash[:notice] = "#{@user_hike.hike.name} has been added to My Hikes."
      redirect_to user_hikes_path
    else
      flash[:alert] = "#{@user_hike.hike.name} could not be added to My Hikes."
    end
  end

  private

  def wishlist_params
    params.require(:user_hike).permit(:user_id, :hike_id, :list)
  end
end
