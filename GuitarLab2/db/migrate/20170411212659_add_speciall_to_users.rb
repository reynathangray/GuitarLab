class AddSpeciallToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :speciall, :boolean, default: false
    add_column :users, :special, :boolean, default: false
  end
end
