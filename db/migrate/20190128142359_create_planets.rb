class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :description
      t.string :solar_system
      t.string :category
      t.integer :size
      t.integer :price
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
