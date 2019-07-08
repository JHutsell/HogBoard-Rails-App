class AddSubjectToProfessor < ActiveRecord::Migration[5.2]
  def change
    add_column :professors, :subject, :string
  end
end
