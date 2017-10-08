class DropJournalEntries < ActiveRecord::Migration[5.1]
  def change
    drop_table :journal_entries
  end
end
