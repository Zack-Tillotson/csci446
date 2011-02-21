class Document < ActiveRecord::Base
  validates_presence_of :title, :author, :body
  validates_uniqueness_of :title
  validate :no_authors_of_ill_repute

  cattr_reader :per_page
  @@per_page = 2 

end
