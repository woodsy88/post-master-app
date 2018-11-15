class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :likes

  has_person_name
  
  has_many :events
  # checks if user has liked a post
  def likes?(post)
    # returns true or false
    post.likes.where(user_id: id).any?
  end

	def avatar_url
    hash = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar/#{hash}"
  end


end
