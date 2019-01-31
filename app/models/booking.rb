class Booking < ApplicationRecord
  belongs_to :planet
  belongs_to :user
  has_one :review

  scope :pendings, -> { where(status: 'Pending') }
  scope :accepted, -> { where(status: 'Accepted') }
  scope :declined, -> { where(status: 'Declined') }

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
