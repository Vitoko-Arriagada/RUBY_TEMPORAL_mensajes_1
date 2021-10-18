class Message < ApplicationRecord
  validates :author, :message, presence: true
  validates :message, length: { minimum: 2 }
  belongs_to :post
end
