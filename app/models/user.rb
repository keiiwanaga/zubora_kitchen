class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d!@#\$%\^\&*\)\(+=._-]{7,128}\z/i

  validates :nickname, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX, message: 'のフォーマットが不適切です'}
  validates :password, presence: true, length: { in: 6..128 }, format: { with: VALID_PASSWORD_REGEX, message: 'は英字と数字両方を含むパスワードを設定してください'}
  has_many :meals
end
