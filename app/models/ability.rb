class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user
    
    if user.tipo == "Administrador"
		  can :manage, :all
		else
	    can :show, :all 
	  end
	end	  
end
