class UserHikesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @user_hike = UserHike.find(params[:id])
    @journal_entries = JournalEntry.where(user_hike_id: @user_hike)
    @new_journal_entry = JournalEntry.new
  end

  def edit
    @user_hike = UserHike.find(params[:id])
  end

  def update
    @user_hike = UserHike.find(params[:id])
    @user_hike.update(user_hike_params)
    if @user_hike.save
      redirect_to user_hike_path(@user_hike), notice: "Your Trip Journal has been updated."
    else
      flash[:alert] = "#{@user_hike.errors.messages[:photo][0]}"
      redirect_to user_hike_path(@user_hike)
    end
  end

  def destroy
    @user_hike = UserHike.find(params[:id])
    @user_hike.delete
    redirect_to user_hikes_path
  end

  private

  def user_hike_params
    params.require(:user_hike).permit(
      :user_id,
      :hike_id,
      :list,
      :trip_details,
      :photo
    )
  end
end
