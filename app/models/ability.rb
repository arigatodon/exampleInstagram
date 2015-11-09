class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new(role: 1)
    if user.admin?
      can :manage, :all
    elsif user.client?
      can :read, :all
      can :create, [Comment, Post]
      can [:update, :destroy], Comment, user_id: user.id
      can :edit, Post
    else
      can :read, :all
      
    end
  end

end