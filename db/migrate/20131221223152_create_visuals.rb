class CreateVisuals < ActiveRecord::Migration
  def change
    create_table :visuals do |t|
      t.references :patient
      t.string :type
      t.string :image_url
      t.date :date
      t.string :notes

      t.timestamps
    end
    add_index :visuals, :patient_id
  end
end
