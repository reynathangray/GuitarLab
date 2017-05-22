class AddAttachmentChordVariationToChords < ActiveRecord::Migration
  def self.up
    change_table :chords do |t|
      t.attachment :chord_variation
    end
  end

  def self.down
    remove_attachment :chords, :chord_variation
  end
end
