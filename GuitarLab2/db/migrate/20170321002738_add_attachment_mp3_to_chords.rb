class AddAttachmentMp3ToChords < ActiveRecord::Migration
  def self.up
    change_table :chords do |t|
      t.attachment :mp3

    end
  end

  def self.down
    remove_attachment :chords, :mp3
  end
end
