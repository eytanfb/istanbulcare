class RenameColumnNameInVisuals < ActiveRecord::Migration
  def up
    rename_column :visuals, :type, :tip
  end

  def down
  end
end
