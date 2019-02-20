class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    create?
  end

  def create?
    true
  end

  def show?
    true
  end

  def edit?
    update?
  end

  def update?
    # if user created, returns true, authorize
    record.teacher == user
  end

  def destroy?
    # if user created, returns true, authorize
    record.teacher == user
  end

  def specific?
    true
  end

  def destroy_specific?
    destroy?
  end

  def join?
    true
  end
end
