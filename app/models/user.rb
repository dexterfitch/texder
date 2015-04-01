class User < ActiveRecord::Base

  has_many :contacts

  validates :name, :presence => true
  validates :number, :presence => true
  # validates_length_of :number, is: 10, wrong_length: "Phone number must be exactly 10 digits"

  validates_uniqueness_of :number
  validates_uniqueness_of :email

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
