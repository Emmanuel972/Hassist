class UserStep < ApplicationRecord
  belongs_to :user
  belongs_to :step
  has_many :files, dependent: :destroy
end
