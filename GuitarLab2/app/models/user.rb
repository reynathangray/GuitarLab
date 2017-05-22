class User < ApplicationRecord

  #force email to be lowercase
  before_save {email.downcase!}

  #makes sure name is present and sets maximum length
  validates :name, presence: true, length: {maximum: 50}

   VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence:true, length: {maximum: 250}, format:
  {with: VALID_EMAIL_REGEX },
  uniqueness: {case_sensitive:false}

  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

  has_attached_file   :profpic, styles: {large: "600x600", medium: "300x300", thumb: "150x150#"}
  has_attached_file   :coverpic, styles: {large: "600x600", medium: "300x300", thumb: "150x150#"}

  validates_attachment_content_type :profpic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :coverpic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
