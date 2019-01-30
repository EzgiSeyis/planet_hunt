class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    is_the_guest? || is_the_owner?
  end

  private

  def is_the_guest?
    record.user == record.booking.user # to check if user is the guest of the booking
  end

  def is_the_owner?
    record.user == record.booking.planet.user # check if user is the owner of the planet booked
  end
end
