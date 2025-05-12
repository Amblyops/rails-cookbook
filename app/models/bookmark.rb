class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :recipe_id, :scope => [:cateogory_id]
end
