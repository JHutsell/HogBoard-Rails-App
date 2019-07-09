class RemoveGpaFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :gpa, :integer
  end
end
