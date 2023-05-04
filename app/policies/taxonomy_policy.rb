class TaxonomyPolicy < ApplicationPolicy
  def index?
    user.admin? || user.editor?
  end

  def create?
    true
  end

  def update?
    user.admin? || user.editor?
  end

  def destroy?
    user.admin? || user.editor?
  end
end
