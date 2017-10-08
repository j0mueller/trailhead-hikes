class CreateJournalEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :journal_entries do |t|
      t.datetime :date,         null: false
      t.text :entry,            null: false, default: ""
      t.belongs_to :user_hike
      t.timestamps              null: false
    end
  end
end
