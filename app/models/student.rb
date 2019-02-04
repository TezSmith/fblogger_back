class Student < ApplicationRecord
  has_many :cohorts
  has_many :instructors, through: :cohorts
  has_secure_password 
end
