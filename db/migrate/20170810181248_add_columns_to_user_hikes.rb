class AddColumnsToUserHikes < ActiveRecord::Migration[5.1]
  def change
    add_column :user_hikes, :trip_details, :text
    add_column :user_hikes, :photo, :string
  end
end
