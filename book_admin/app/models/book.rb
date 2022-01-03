class Book < ApplicationRecord
  scope :costly, -> { where("price > ?", 3000) }
  scope :written_about, ->(thema) { where("name like ?", "%#{thema}%") }
  scope :find_price, ->(price) { find_by(price: price) }
end
