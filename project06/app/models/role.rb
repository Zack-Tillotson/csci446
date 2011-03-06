class Role < ActiveRecord::Base
  
  validates_length_of :role_name, :minimum => 1
  validates_uniqueness_of :role_name
  
  has_many :users
  
  def role_name=(role_name)
    write_attribute(:role_name, role_name.strip.downcase)
  end
  
  def to_s
    role_name
  end
  
end
