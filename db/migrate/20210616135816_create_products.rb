class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :product_size
      t.integer :age
      t.string :color
      t.string :cloth_type
      t.integer :price
      t.string :gender
      t.string :img_url

      t.timestamps
    end
  end
end
