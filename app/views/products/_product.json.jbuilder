json.extract! product, :id, :style_name, :sku, :color, :price_per_unit, :price_per_pack, :created_at, :updated_at
json.url product_url(product, format: :json)
