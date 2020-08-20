class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :assignments
  has_many :subjects, through: :assignments
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
