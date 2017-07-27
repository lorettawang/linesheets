class Cart < ApplicationRecord
  belongs_to :cart_status
  has_many :cart_items
  before_create :set_order_status
  before_save :update_subtotal

  def update_subtotal
  cart_items.collect { |ci| ci.valid? ? (ci.quantity * ci.unit_price_per_pack) : 0 }.sum
end

private

  def set_cart_status
    self.cart_status_id = 1
  end
  
  def update_subtotal
    self[:subtotal] = subtotal
  end
  
end


