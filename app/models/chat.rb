class Chat < ApplicationRecord
  validates :body, presence: true
  
  belongs_to :user, optional: true

  belongs_to :trainer, optional: true
end
