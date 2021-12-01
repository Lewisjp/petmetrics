class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.string :picture
      t.date :dateofbirth
      t.string :breed
      t.string :sex
      t.string :origin
      t.boolean :dead
      t.text :causeofdeath

      t.timestamps null: false
    end
  end
end
