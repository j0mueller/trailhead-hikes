class DropColumnFromHikes < ActiveRecord::Migration[5.1]
  def change
    remove_column :hikes, :region, :string
  end
end
