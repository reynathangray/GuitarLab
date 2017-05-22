class AddAttachmentProfpicCoverpicToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :profpic
      t.attachment :coverpic
    end
  end

  def self.down
    remove_attachment :users, :profpic
    remove_attachment :users, :coverpic
  end
end
