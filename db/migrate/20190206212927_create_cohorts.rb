class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :location
      t.integer :instructor_id
      t.integer :student_id

      t.timestamps
    end
  end
end
