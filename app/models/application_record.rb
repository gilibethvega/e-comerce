class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.products_available
    products_available = []
    self.all.each do |product|
      if product.variations.first && product.variations.first.stock > 0
        products_available << product
      end
    end
    products_available
  end
end
