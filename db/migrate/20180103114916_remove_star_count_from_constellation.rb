class RemoveStarCountFromConstellation < ActiveRecord::Migration[5.1]

  def up
    remove_column :constellations, :star_count
  end

  def down
    add_column  :constellations, :star_count, :integer
  end

end
