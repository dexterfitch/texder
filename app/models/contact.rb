class Contact < ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true
  validates :number, :presence => true
  # validates_length_of :number, is: 10, wrong_length: "Phone number must be exactly 10 digits"
end
