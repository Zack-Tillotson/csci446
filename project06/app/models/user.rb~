class User < ActiveRecord::Base
  
  acts_as_authentic do |c|
    c.login_field = :login
    c.email_field = :email
  end
  
  belongs_to :role
  
  default_scope :include => [:role]
  
  def role_symbols
    [role.role_name.downcase.to_sym]
  end
  
end
