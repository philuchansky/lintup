class Snippet < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :language, presence: true
  validates :content, presence: true

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
end
