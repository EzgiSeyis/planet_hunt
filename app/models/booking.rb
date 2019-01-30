class Booking < ApplicationRecord
  belongs_to :planet
  belongs_to :user
  has_one :review
end
