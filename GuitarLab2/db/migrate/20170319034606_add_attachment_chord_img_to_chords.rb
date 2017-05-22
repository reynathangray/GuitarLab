class AddAttachmentChordImgToChords < ActiveRecord::Migration
  def self.up
    change_table :chords do |t|
      t.attachment :chord_img
    end
  end

  def self.down
    remove_attachment :chords, :chord_img
  end
end
