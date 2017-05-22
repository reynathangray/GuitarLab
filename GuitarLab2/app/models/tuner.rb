class Tuner < ApplicationRecord

has_attached_file   :mp3_one
has_attached_file   :mp3_two
has_attached_file   :mp3_three
has_attached_file   :mp3_four
has_attached_file   :mp3_five
has_attached_file   :mp3_six



validates_attachment :mp3_one, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }
  validates_attachment :mp3_two, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }
    validates_attachment :mp3_three, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }
      validates_attachment :mp3_four, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }
        validates_attachment :mp3_five, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }
          validates_attachment :mp3_six, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }

end
