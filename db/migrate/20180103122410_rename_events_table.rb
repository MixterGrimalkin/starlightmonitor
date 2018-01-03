class RenameEventsTable < ActiveRecord::Migration[5.1]

  def up
    rename_table :events, :star_events
  end

  def down
    rename_table :star_events, :events
  end

end
