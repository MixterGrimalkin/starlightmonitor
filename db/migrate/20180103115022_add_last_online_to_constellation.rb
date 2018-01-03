class AddLastOnlineToConstellation < ActiveRecord::Migration[5.1]

  def up
    add_column :constellations, :last_online, :datetime
  end

  def down
    remove_column :constellations, :last_online
  end

end
