class ChangeTipInOperation < ActiveRecord::Migration
  def up
    add_column :operations, :tip_first, :string
    add_column :operations, :tip_second, :string
    remove_column :operations, :tip
  end

  def down
  end
end
