class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.integer :cat_id
      t.string :veterinarian
      t.date :dateofdiagnosis
      t.text :condition
      t.text :conditionform
      t.boolean :conditionrelapse
      t.boolean :remission
      t.date :remissiondate

      t.timestamps null: false
    end
  end
end
