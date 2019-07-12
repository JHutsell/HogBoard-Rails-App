class AddImgToProfessors < ActiveRecord::Migration[5.2]
  def change
    add_column :professors, :image, :string
  end
end
