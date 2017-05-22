class Chord < ApplicationRecord
    has_attached_file   :chord_img, styles: {large: "600x600", medium: "300x300", thumb: "150x150#"}
    has_attached_file   :chord_variation, styles: {large: "600x600", medium: "300x300", thumb: "150x150#"}
    has_attached_file   :mp3
    
    validates_attachment_content_type :chord_img, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    validates_attachment_content_type :chord_variation, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    validates_attachment :mp3, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }


end
