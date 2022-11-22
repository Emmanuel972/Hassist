class UserStep < ApplicationRecord
  belongs_to :user
  belongs_to :step
  has_many_attached :files, dependent: :destroy
end
