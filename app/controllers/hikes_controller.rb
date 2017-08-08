class HikesController < ApplicationController
  def index
    @hikes = Hike.all
    @ordered_hikes = Hike.all.order(country: :asc, name: :asc)
    @new_hike = Hike.new
    @countries = Hike::COUNTRIES
    @difficulty_levels = ["EASY", "MODERATE", "HARD"]
  end

  def show
    @hike = Hike.find(params[:id])
    @new_user_hike = UserHike.new
    @user = current_user
  end

  def new
    @new_hike = Hike.new
    @countries = Hike::COUNTRIES
    @difficulty_levels = ["EASY", "MODERATE", "HARD"]
  end

  def create
    @new_hike = Hike.new(hike_params)
    if @new_hike.save
      flash[:notice] = "Your trail has been added!"
      redirect_to hikes_path
    else
      flash[:alert] = "Your trail has not been added."
      @countries = Hike::COUNTRIES
      @difficulty_levels = ["EASY", "MODERATE", "HARD"]
      render :index
    end
  end

  private

  def hike_params
    params.require(:hike).permit(
      :name,
      :country,
      :state,
      :city,
      :difficulty,
      :elevation,
      :distance,
      :description
    )
  end
end
