class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :image
      t.text :materials
      t.text :step1
      t.string :step1_image
      t.text :step2
      t.string :step2_image
      t.text :step3
      t.string :step3_image
      t.text :step4
      t.string :step4_image
      t.text :step5
      t.string :step5_image
      t.integer :protein
      t.integer :fat
      t.integer :carbo
      t.references :user
      t.timestamps
    end
  end
end
