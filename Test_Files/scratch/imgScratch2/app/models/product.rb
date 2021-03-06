class Product < ApplicationRecord
  belongs_to :category

  has_attached_file   :photo, styles: {large: "600x600", medium: "300x300", thumb: "150x150#"}
validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
