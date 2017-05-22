class CreateProfileInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_infos do |t|
      t.string :firstName
      t.string :lasName
      t.string :faveMusic
      t.string :bio

      t.timestamps
    end
  end
end
