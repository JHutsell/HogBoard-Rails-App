class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :content
      t.belongs_to :student, foreign_key: true
      t.belongs_to :club, foreign_key: true
      
      t.timestamps
    end
  end
end
