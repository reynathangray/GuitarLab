class AddStudentToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :student, :boolean, default: false
  end
end
