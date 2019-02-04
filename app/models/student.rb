class Student < ApplicationRecord
  has_many :cohorts
  has_many :instructors, through: :cohorts
end
