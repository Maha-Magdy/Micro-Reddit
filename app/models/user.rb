class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 4 }, uniqueness: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i,
                                              message: 'need to enter a valid email' }

  has_many :posts
  has_many :comments
end
