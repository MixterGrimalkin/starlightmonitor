class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.text :name
      t.text :description
      t.text :type
      t.boolean :current_state

      t.timestamps
    end
  end
end
