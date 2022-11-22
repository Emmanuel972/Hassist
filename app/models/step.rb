class Step < ApplicationRecord
  has_many :user_steps
  belongs_to :user, optional: true

  validates :name, :content, presence: true
  validates :name, length: { minimum: 3 }
  validates :content, length: { minimum: 10 }

  scope :publicly_available, -> { where(user: nil) }
  scope :privately_available, -> { where.not(user: nil) }

  after_create :associate_user

  private

  def associate_user
    return unless user.present?

    UserStep.create(user: user, step: self)
  end
end
