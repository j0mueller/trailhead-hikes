class UserHikesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def update
    @user_hike = UserHike.find(params[:id])
    @user_hike.update(list: "my_hikes")
    redirect_to user_hikes_path
  end

  def destroy
    @user_hike = UserHike.find(params[:id])
    @user_hike.delete
    redirect_to user_hikes_path
  end

  private

  def user_hike_params
    params.require(:user_hike).permit(
      :id,
      :user_id,
      :hike_id,
      :list
    )
  end
end
