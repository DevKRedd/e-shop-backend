class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.string :images, array: true, default: []


      t.timestamps
    end
  end
end
