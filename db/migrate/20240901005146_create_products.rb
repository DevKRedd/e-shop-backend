class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :image
      t.decimal :price, precision: 10, scale: 2
      t.text :description
      t.string :brand
      t.string :model
      t.string :color
      t.string :category
      t.boolean :popular, default: false
      t.boolean :on_sale, default: false
      t.integer :discount, default: 0

      t.timestamps
    end
  end
end