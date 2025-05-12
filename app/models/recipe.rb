class Recipe < ApplicationRecord
  has_many :bookmarks
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, numericality: { in: (0..5) }
end
