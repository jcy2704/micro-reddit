class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }
end
