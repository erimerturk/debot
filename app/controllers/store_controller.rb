class StoreController < ApplicationController
  include CurrentStoreVisit
  include CurrentCart


  before_action :set_visit_count, only: [:index]
  before_action :set_cart

  def index
    @products = Product.order(:title)
  end
end
