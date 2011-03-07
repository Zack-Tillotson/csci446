class Game < ActiveRecord::Base
  
  validates_length_of :title, :minimum => 1
  
  belongs_to :user
  
  cattr_reader :per_page
  @@per_page = 10
  
end
