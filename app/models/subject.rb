class Subject < ApplicationRecord
    has_many :assignments
    has_many :students, through: :assignments
end
