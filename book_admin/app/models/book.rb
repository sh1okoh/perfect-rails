class Book < ApplicationRecord
  scope :costly, -> { where("price > ?", 3000) }
  scope :written_about, ->(thema) { where("name like ?", "%#{thema}%") }

  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors
end
