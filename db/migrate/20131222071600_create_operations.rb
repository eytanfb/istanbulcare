class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.references :patient
      t.date :date
      t.string :tip
      t.string :notes

      t.timestamps
    end
    add_index :operations, :patient_id
  end
end
