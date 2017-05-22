class AddAttachmentPhoto2ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :photo2
    end
  end

  def self.down
    remove_attachment :products, :photo2
  end
end
