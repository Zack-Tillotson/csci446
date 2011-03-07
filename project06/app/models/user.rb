class User < ActiveRecord::Base
  
  acts_as_authentic do |c|
    c.login_field = :login
    c.email_field = :email
  end
  
  validates_uniqueness_of :login
  
  belongs_to :role
  has_many :games
  
  has_attached_file :photo,
   :styles => {
    :thumb=> "100x100#",
    :large =>   "400x400>" }
  
  default_scope :include => [:role]
  
  def role_symbols
    [role.role_name.downcase.to_sym]
  end
  
end
