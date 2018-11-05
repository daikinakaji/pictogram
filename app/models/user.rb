class User < ApplicationRecord
  validates :name, presence: true

  EMAIL_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\Z/i
  validates :email, presence: true

  has_secure_password

  has_many :topics
  has_many :favorites #, dependent: :destroy
  has_many :favorite_topics, through: :favorites, source: 'topic'

end
