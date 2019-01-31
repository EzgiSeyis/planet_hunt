class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def accept?
    record.planet.user == user
  end

  def decline?
    record.planet.user == user
  end
end
