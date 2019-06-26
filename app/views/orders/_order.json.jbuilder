json.extract! order, :id, :name, :address, :email, :pay_type, :created_at, :updated_at
json.url order_url(order, format: :json)
json.products(order.line_items) do |line_item|
  json.title line_item.product.title
  json.quantity line_item.quantity
  json.price  number_to_currency line_item.total_price
end
