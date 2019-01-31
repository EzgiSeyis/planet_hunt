class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  validates :rating, numericality: {less_than_or_equal_to: 5} # Rating 1-5
end
