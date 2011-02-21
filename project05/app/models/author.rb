class Author < ActiveRecord::Base

  validates_presence_of :name
  validates_attachment_presence :photo
  validate :no_author_of_ill_repute

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

private
  def no_author_of_ill_repute
    errors.add(:author, 'Sally is not allowed to write anything here') if name.downcase =~ /sally/
  end
end
