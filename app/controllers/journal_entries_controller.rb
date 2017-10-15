class JournalEntriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_hike = UserHike.find(params[:user_hike_id])
    @journal_entries = @user_hike.journal_entries
    @journal_entry = JournalEntry.new
  end

  def show
    @journal_entry = JournalEntry.find(params[:id])
    @user_hike = @journal_entry.user_hike
  end

  def new
    @user_hike = UserHike.find(params[:user_hike_id])
    @journal_entry = JournalEntry.new
  end

  def create
    @user_hike = UserHike.find(params[:user_hike_id])
    @journal_entry = JournalEntry.new(journal_entry_params)
    @journal_entry.user_hike = @user_hike
    @journal_entries = @user_hike.journal_entries

    if @journal_entry.save
      flash[:notice] = "Your journal entry has been saved!"
      redirect_to user_hike_journal_entries_path
    else
      flash[:alert] = "Failed to save journal entry."
      render :new
    end
  end

  def update
    @journal_entry = JournalEntry.find(params[:id])
    @journal_entry.update(journal_entry_params)
    if @journal_entry.save
      redirect_to journal_entry_path(@journal_entry), notice: "Your Trip Journal has been updated."
    else
      flash[:alert] = "#{@journal_entry.errors.messages}"
      redirect_to journal_entry_path(@journal_entry)
    end
  end

  def destroy
    @journal_entry = JournalEntry.find(params[:id])
    @journal_entry.delete
    redirect_to journal_entries_path
  end

  private

  def journal_entry_params
    params.require(:journal_entry).permit(
      :date,
      :entry,
      :user_hike_id
    )
  end
end
