class Document < ActiveRecord::Base
  validates_presence_of :title, :author, :body
  validates_uniqueness_of :title
  validate :no_authors_of_ill_repute

  cattr_reader :per_page

  @@per_page = 2 

protected
  def no_authors_of_ill_repute
    errors.add(:author, 'Sally is not allowed to write anything here') if author == "Sally"
  end
end
