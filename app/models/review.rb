class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
   validates :rating, numericality: { greater_than_or_equal_to: 0, less_than: 6, only_integer: true }
  # vavalidates :category, inclusion: 0..5
  # validates :rating, :inclusion => { :in => 0..5, :message => " should be between 0 to 5" }
  # validates :category, inclusion: %w(1,2,3,4,5)
  # validates :category, inclusion: { in: %w(1,2,3,4,5)}

end

# A review must belong to a restaurant. done
# A review must have content and a rating.
# A review’s rating must be a number between 0 and 5.
