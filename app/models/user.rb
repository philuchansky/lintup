class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  has_many :snippets, dependent: :destroy
  has_many :comments, dependent: :destroy
end
