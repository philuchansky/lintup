class User < ActiveRecord::Base
  has_secure_password
  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true


  has_many :snippets, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def already_likes?(snippet)
    self.likes.where("snippet_id = #{snippet.id}").count > 0
  end

  include Gravtastic
  is_gravtastic :size => 250,
                :default => 'retro'
end