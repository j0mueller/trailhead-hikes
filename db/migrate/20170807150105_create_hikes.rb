class CreateHikes < ActiveRecord::Migration[5.1]
  def change
    create_table :hikes do |t|
      t.string :name, null: false
      t.string :country, null: false
      t.string :state
      t.string :city
      t.string :region
      t.string :difficulty
      t.integer :elevation
      t.integer :distance
      t.text :description
    end
  end
end
