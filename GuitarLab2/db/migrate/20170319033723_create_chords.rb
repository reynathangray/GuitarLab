class CreateChords < ActiveRecord::Migration[5.0]
  def change
    create_table :chords do |t|
      t.string :name

      t.timestamps
    end
  end
end
