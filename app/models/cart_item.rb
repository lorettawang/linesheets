class CartItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :product_present
  validate :cart_present

  before_save :finalize

  def unit_price_per_pack
    if persisted?
      self[:unit_price_per_pack]
    else
      product.unit_price_per_pack
    end
  end
  
  def total_price_per_pack
    unit_price_per_pack * quantity
  end
  
private

  def product_present
    if product.nil?
      errors.add(:product, "is not valid or is not available.")
    end
  end
  
  def cart_present
    if cart.nil?
      errors.add(:cart, "is not a valid order.")
    end
  end
  
  def finalize
    self[:unit_price_per_pack] = unit_price_per_pack
    self[:total_price_per_pack] = quantity * self [:unit_price_per_pack]
  end
end

