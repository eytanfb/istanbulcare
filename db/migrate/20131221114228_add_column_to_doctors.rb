class AddColumnToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :tc_no, :integer
  end
end
