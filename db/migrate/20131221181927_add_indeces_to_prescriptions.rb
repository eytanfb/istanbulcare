class AddIndecesToPrescriptions < ActiveRecord::Migration
  def change
    add_index :prescriptions, :doctor_id
    add_index :prescriptions, :patient_id
  end
end
