class School < ApplicationRecord
    has_many :students, class_name: "User"
    has_many :projects, through: :students
end
