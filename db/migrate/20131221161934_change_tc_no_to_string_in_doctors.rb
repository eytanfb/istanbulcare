class ChangeTcNoToStringInDoctors < ActiveRecord::Migration
  def up
    change_column :doctors, :tc_no, :string
  end

  def down
    change_column :doctors, :tc_no, :integer
  end
end
