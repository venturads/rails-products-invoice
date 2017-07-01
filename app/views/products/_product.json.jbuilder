json.extract! product, :id, :model, :sku, :serial_number, :cost_price, :price, :inventory, :vendor, :created_at, :updated_at
json.url product_url(product, format: :json)