class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.text :notes
      t.references :prescription

      t.timestamps
    end
    add_index :drugs, :prescription_id
  end
end
