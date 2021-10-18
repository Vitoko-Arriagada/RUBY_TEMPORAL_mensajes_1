class Post < ApplicationRecord
  validates :title, :content, presence: true
  validates :title, length: { minimum: 2 }
  belongs_to :blog
  has_many :messages, dependent: :destroy
end
