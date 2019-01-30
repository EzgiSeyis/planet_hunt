class UserPolicy < ApplicationPolicy
  class Scope < Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if record == user
        scope.where(id: user.id)
      end
    end
  end

  def show?
    true
  end

  def update?
    record == user
  end

end
