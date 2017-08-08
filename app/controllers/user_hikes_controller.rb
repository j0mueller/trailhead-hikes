class UserHikesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @user = current_user
    @hike = Hike.find(params[:id])
  end

  def create
    @user = current_user
    @hike = Hike.find(params[:id])
    @new_user_hike = UserHike.new(user_hike_params)
    if @new_user_hike.save
      flash[:notice] = "#{@hike.name} has been added to your list."
      redirect_to user_hikes_path
    else
      flash[:alert] = "#{@hike.name} was not added to your list."
      render :show
  end

  def edit
  end

  def destroy
  end

  private

  def user_hike_params
    params.require(:user_hike).permit(
      :user_id,
      :hike_id,
      :list
    )
  end

end
