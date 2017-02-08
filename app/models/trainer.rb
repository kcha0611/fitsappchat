class Trainer < ApplicationRecord
  validates :first_name, :last_name, presence: { message: "cannot be blank"}
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}

  has_many :chats
end
