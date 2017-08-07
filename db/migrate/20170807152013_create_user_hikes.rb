class CreateUserHikes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_hikes do |t|
      t.belongs_to :user
      t.belongs_to :hike
      t.string :list, null: false
    end
  end
end
