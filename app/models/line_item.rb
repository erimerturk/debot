class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  attribute :quantity, :integer, default: -> { 1 }

  def total_price
    product.price * (quantity || 1)
  end
end
