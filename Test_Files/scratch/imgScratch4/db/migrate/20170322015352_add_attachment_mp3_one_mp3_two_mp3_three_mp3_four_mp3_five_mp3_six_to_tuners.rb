class AddAttachmentMp3OneMp3TwoMp3ThreeMp3FourMp3FiveMp3SixToTuners < ActiveRecord::Migration
  def self.up
    change_table :tuners do |t|
      t.attachment :mp3_one
      t.attachment :mp3_two
      t.attachment :mp3_three
      t.attachment :mp3_four
      t.attachment :mp3_five
      t.attachment :mp3_six
    end
  end

  def self.down
    remove_attachment :tuners, :mp3_one
    remove_attachment :tuners, :mp3_two
    remove_attachment :tuners, :mp3_three
    remove_attachment :tuners, :mp3_four
    remove_attachment :tuners, :mp3_five
    remove_attachment :tuners, :mp3_six
  end
end
