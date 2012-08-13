class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil? # not loggin
      can :read, Place
    elsif user.admin?
      can :access, :rails_admin
      can :dashboard

      can :manage, :all
    else
      can :manage, Place
    end
  end
end
