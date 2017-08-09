class WishlistsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = current_user
    @hike = Hike.find(params[:user_hike][:hike_id])
    if UserHike.where(user: @user, hike: @hike)
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

  private

  def user_hike_params
    params.require(:user_hike).permit(:hike_id)
  end
end
