class Booking < ApplicationRecord
  belongs_to :planet
  belongs_to :user

  def accepted?
    status == 'Accepted'
  end

  def pending?
    status == 'Pending' || nil
  end

  def declined?
    status == 'Declined'
  end
end
