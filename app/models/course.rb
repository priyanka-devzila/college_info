class Course < ApplicationRecord

    has_and_belongs_to_many :people
    has_many :semesters
end
