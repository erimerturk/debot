class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product, optional: true
  belongs_to :order, optional: true
  attribute :quantity, :integer, default: -> { 1 }

  def total_price
    product.price * (quantity || 1)
  end
end
