class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.integer :disease_id
      t.date :startdate
      t.date :enddate
      t.integer :totalweeks
      t.text :medicine
      t.text :dose
      t.text :device
      t.text :surgery
      t.boolean :treatmentcomplete

      t.timestamps null: false
    end
  end
end
