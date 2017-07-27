class Product < ApplicationRecord
    has_attached_file :image, styles: { medium: "300x300>", thumb: "150x150>" }, presence: true
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    has_many :cart_items
end
