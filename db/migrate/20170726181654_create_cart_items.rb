class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.references :product, foreign_key: true
      t.references :cart, foreign_key: true
      t.float :unit_price_per_pack
      t.integer :quantity
      t.float :total_price_per_pack

      t.timestamps
    end
  end
end
