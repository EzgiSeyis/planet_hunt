class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    (is_the_guest? || is_the_owner?) && record.booking.accepted? && first_review?
  end

  private

  def is_the_guest?
    record.user == record.booking.user # to check if user is the guest of the booking
  end

  def is_the_owner?
    record.user == record.booking.planet.user # check if user is the owner of the planet booked
  end

  def first_review?
    Review.where(booking: record.booking).count.zero?
    #record.booking.reviews.empty? || !record.booking.review.persisted?
  end
end
