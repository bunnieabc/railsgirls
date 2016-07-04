class AddBirthToEvents < ActiveRecord::Migration[5.0]
  def change
  	add_column :events, :birth, :string
  end
end
