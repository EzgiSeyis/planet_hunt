class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.user == user
  end

  def new?
    true
  end

  def create?
    record.planet.user != user # user == ist der Curent user . Check ob der Plannet User = curennt user
  end

  def accept?
    record.planet.user == user
  end

  def decline?
    record.planet.user == user
  end
end
