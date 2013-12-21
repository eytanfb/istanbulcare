class ChangeTcNoToStringInPatients < ActiveRecord::Migration
  def up
    change_column :patients, :tc_no, :string
  end

  def down
    change_column :patients, :tc_no, :integer
  end
end
