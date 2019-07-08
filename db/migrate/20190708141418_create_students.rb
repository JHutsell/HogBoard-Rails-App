class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :year
      t.string :house
      t.integer :gpa
      t.string :patronus
      t.string :bloodstatus

      t.timestamps
    end
  end
end
