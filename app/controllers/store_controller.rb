class StoreController < ApplicationController
  include CurrentStoreVisit

  before_action :set_visit_count, only: [:index]

  def index
    @products = Product.order(:title)
  end
end
