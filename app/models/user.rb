class User < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :first_name, uniqueness: { scope: :last_name }, presence: true
  validates_presence_of :last_name
  validates :email_address, uniqueness: true, presence: true, format: { with: EMAIL_REGEX }

end
