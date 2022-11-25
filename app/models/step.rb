class Step < ApplicationRecord
  has_many :user_steps
  belongs_to :user, optional: true
  has_many_attached :files, dependent: :destroy

  validates :name, :content, presence: true
  validates :name, length: { minimum: 3 }
  validates :content, length: { minimum: 10 }

  scope :publicly_available, -> { where(user: nil) }
  scope :privately_available, -> { where.not(user: nil) }

end
