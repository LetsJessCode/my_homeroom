class Student < ApplicationRecord
    has_many :assignments
    has_many :subjects, through: :assignments
end
