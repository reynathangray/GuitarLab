class RemoveFieldNameFromChord < ActiveRecord::Migration[5.0]
  def change
    remove_column :chords, :chord_mp3, :attatchment
  end
end
