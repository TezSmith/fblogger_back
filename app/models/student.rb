class Student < User
  has_many :cohorts
  has_many :instructors, through: :cohorts 
end
