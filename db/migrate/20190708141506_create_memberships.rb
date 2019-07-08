class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.belongs_to :student, foreign_key: true
      t.belongs_to :club, foreign_key: true
      
      t.timestamps
    end
  end
end
