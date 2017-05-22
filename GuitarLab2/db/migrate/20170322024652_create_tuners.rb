class CreateTuners < ActiveRecord::Migration[5.0]
  def change
    create_table :tuners do |t|
      t.string :tunerName

      t.timestamps
    end
  end
end
