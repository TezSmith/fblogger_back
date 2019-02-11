class User < ApplicationRecord

# I am using Devise to manage user roles/models don't have corresponding tables,
# Therefore I defined relationships within their respective models.

# Line 10 Looks at the Cohort table from the "perspective" of the Instructor model & defines the student_id as the foreign key
# Line 11 Establishes that the instructor_id matches the belongs_to id in the Cohort Model
# Lines 12 & 13, Creates the inverse relationship from the "perspective" of the Student

# has_many :cohort_instructors, foreign_key: :student_id, class_name "Cohort"
# has_many :instructors, through: :cohort_instructors, source: :instructor
# has_many :cohort_students, foreign_key: :instructor_id, class_name "Cohort"
# has_many :students, through: :cohort_students, source: :student

  # Includes default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
