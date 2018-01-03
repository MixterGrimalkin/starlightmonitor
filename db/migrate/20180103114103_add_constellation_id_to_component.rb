class AddConstellationIdToComponent < ActiveRecord::Migration[5.1]

  def up
    add_column :components, :constellation_id, :integer
  end

  def down
    remove_column :components, :constellation_id
  end

end
