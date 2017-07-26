class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :style_name
      t.string :sku
      t.string :color
      t.float :price_per_unit
      t.float :price_per_pack

      t.timestamps
    end
  end
end
