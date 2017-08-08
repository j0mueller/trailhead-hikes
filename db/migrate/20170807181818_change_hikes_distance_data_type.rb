class ChangeHikesDistanceDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :hikes, :distance, :float
  end
end
