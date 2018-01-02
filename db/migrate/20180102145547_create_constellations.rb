class CreateConstellations < ActiveRecord::Migration[5.1]
  def change
    create_table :constellations do |t|
      t.text :name
      t.text :description
      t.integer :star_count
      t.timestamps
    end
  end
end
