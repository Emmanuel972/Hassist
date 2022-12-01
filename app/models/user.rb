class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :user_steps
  has_many :steps, through: :user_steps
  has_many :private_steps, class_name: 'Step'

  validates :first_name, :last_name, presence: true
  validates :last_name, :first_name, length: { minimum: 3 }
end
