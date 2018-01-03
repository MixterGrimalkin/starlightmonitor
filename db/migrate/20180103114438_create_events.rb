class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.boolean :state

      t.timestamps
    end
  end
end
