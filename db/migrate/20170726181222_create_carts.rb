class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.float :subtotal
      t.float :shipping
      t.float :total
      t.references :cart_status, foreign_key: true

      t.timestamps
    end
  end
end
