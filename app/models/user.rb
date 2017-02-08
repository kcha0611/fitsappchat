class User < ApplicationRecord
  validates :first_name, :last_name, presence: { message: "cannot be blank"}
  validates :email, presence: true, uniqueness: true
  validates :role, presence: true
  validates :password, length: {minimum: 6, allow_nil: true}

  has_secure_password

  has_many :chats
end
