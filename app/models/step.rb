class Step < ApplicationRecord
  has_many :user_steps

  validates :name, :content, presence: true
  validates :name, length: { minimum: 3 }
  validates :content, length: { minimum: 10 }
end
