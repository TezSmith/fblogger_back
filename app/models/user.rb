class User < ApplicationRecord

#Complex way of stating self-joining user relationship. Did not use, because I am using Devise to   manage roles & models that don't have corresponding tables to more clearly define relationships.

# cohort_instructors "names" the Cohort join table for accessing through the Instructor association
# has_many :cohort_instructors, foreign_key: :student_id, class_name: "Cohort"
# source: :instructor matches with the belong_to :instructor identification in the Cohort model
# has_many :instructors, through: :cohort_instructors, source: :instructor
# cohort_students "names" the Cohort join table for accessing through the Student association
# has_many :cohort_students, foreign_key: :instructor_id, class_name: "Cohort"
# source: :student matches with the belong_to :student identification in the Cohort model
# has_many :students, through: :cohort_students, source: :student

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
