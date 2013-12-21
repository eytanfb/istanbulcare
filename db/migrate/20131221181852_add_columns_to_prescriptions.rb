class AddColumnsToPrescriptions < ActiveRecord::Migration
  def change
    add_column :prescriptions, :doctor_id, :integer
    add_column :prescriptions, :patient_id, :integer
  end
end
