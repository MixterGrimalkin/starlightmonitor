class AddComponentIdToEvents < ActiveRecord::Migration[5.1]

  def up
    add_column :events, :component_id, :integer
  end

  def down
    remove_column :events, :component_id
  end

end
