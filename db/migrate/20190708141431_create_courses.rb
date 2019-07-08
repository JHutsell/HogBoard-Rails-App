class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.belongs_to :student, foreign_key: true
      t.belongs_to :professor, foreign_key: true
      t.integer :grade

      t.timestamps
    end
  end
end
