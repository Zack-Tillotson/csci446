authorization do
  
  role :guest do
  end
  
  role :member do
  end
  
  role :admin do
    includes :member
    has_permission_on :admin_admin, :to => :manage
    has_permission_on :admin_users, :to => :manage
    has_permission_on :admin_roles, :to => :manage
  end
  
end

privileges do
  
  privilege :manage, :includes => [:create, :read, :update, :delete]
  privilege :read, :includes => [:index, :show]
  privilege :create, :includes => [:new]
  privilege :update, :includes => [:edit]
  privilege :delete, :includes => [:destroy]
  
end  
