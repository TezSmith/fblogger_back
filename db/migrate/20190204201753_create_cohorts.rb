class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :location
      t.references :instructor, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
