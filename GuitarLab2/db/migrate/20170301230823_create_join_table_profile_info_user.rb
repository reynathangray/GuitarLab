class CreateJoinTableProfileInfoUser < ActiveRecord::Migration[5.0]
  def change
    create_join_table :ProfileInfos, :Users do |t|
      t.index [:profile_info_id, :user_id]
      t.index [:user_id, :profile_info_id]
    end
  end
end
