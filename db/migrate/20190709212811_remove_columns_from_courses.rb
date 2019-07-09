class RemoveColumnsFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :student_id, :integer
    remove_column :courses, :grade, :integer
  end
end
