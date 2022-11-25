class UserStep < ApplicationRecord
  has_many_attached :files, dependent: :destroy
  belongs_to :user
  belongs_to :step
end
