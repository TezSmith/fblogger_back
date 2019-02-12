class User < ApplicationRecord
  has_secure_password

  # has_many :cohort_instructors, foreign_key: :student_id
  # has_many :instructors, through: :cohorts, source: :instructor

  # has_many :cohorts, foreign_key: :instructor_id
  # has_many :students, through: :cohorts, source: :student

end
