class AddColumnToVaccines < ActiveRecord::Migration
  def change
    add_column :vaccines, :patient_id, :integer
  end
end
