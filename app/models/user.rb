# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

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

  has_many :notifications, foreign_key: :recipient_id


  has_many :posts
  has_many :forum_threads

end
