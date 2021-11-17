class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #

    #v
=begin
    if user.admin?
      can :manage, :all
    else
      can :read, :all
    end
=end
    #ask 6/11^

    #v
    if user.faculty?
      sublist = FacultySubject.where(:faculty_id => user.id)
      puts "sublist"
      puts sublist.all
      puts "sublist"
    end

    if user.admin?
      can :manage, :all
    elsif user.faculty?
      can :manage, Attendance #, :faculty_subject_id => sublist
      can :read, :all
    end

    #ask 15/11^
    #=end
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
