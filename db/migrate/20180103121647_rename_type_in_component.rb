class RenameTypeInComponent < ActiveRecord::Migration[5.1]

  def up
    rename_column :components, :type, :component_type
  end

  def down
    rename_column :components, :component_type, :type
  end

end
