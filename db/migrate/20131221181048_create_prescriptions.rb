class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.string :prescription_code

      t.timestamps
    end
  end
end
