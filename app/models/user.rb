class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :likes
  
  # checks if user has liked a post
  def likes?(post)
    # returns true or false
    post.likes.where(user_id: id).any?
  end

end
