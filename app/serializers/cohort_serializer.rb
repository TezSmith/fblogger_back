class CohortSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :instructor_id, :student_id
end
