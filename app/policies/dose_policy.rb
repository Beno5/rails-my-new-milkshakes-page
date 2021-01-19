class DosePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.present? && record.milkshake.user == user
  end

  def destroy?
    user.present? && record.milkshake.user == user
  end

end
