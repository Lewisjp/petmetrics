class CreateObservationbiometrics < ActiveRecord::Migration
  def change
    create_table :observationbiometrics do |t|
      t.integer :treatment_id
      t.integer :Day0TempF
      t.integer :Day1TempF
      t.integer :Day2TempF
      t.integer :Day3TempF
      t.integer :Day4TempF
      t.integer :Day5TempF
      t.integer :Week0WhiteBlood
      t.integer :Week1WhiteBlood
      t.integer :Week2WhiteBlood
      t.integer :Week3WhiteBlood
      t.integer :Week4WhiteBlood
      t.integer :Week5WhiteBlood
      t.integer :Week6WhiteBlood
      t.integer :Week7WhiteBlood
      t.integer :Week8WhiteBlood
      t.integer :Week9WhiteBlood
      t.integer :Week10WhiteBlood
      t.integer :Week11WhiteBlood
      t.integer :Week12WhiteBlood
      t.integer :Week0lymphocytes
      t.integer :Week1lymphocytes
      t.integer :Week2lymphocytes
      t.integer :Week3lymphocytes
      t.integer :Week4lymphocytes
      t.integer :Week5lymphocytes
      t.integer :Week6lymphocytes
      t.integer :Week7lymphocytes
      t.integer :Week8lymphocytes
      t.integer :Week9lymphocytes
      t.integer :Week10lymphocytes
      t.integer :Week11lymphocytes
      t.integer :Week12lymphocytes
      t.integer :Week1PCV
      t.integer :Week2PCV
      t.integer :Week3PCV
      t.integer :Week4PCV
      t.integer :Week5PCV
      t.integer :Week6PCV
      t.integer :Week7PCV
      t.integer :Week8PCV
      t.integer :Week9PCV
      t.integer :Week10PCV
      t.integer :Week11PCV
      t.integer :Week12PCV

      t.timestamps null: false
    end
  end
end
