class CreateVaccines < ActiveRecord::Migration
  def change
    create_table :vaccines do |t|
      t.date :date
      t.string :tip
      t.date :expiration_date
      t.string :notes

      t.timestamps
    end
  end
end
