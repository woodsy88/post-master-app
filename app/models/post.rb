class Post < ApplicationRecord
   has_many :likes

  #  MOCK EMAIL USER IF THEY ARE MENTIONED IN A POST
  #  after_create :notified_users
  #  def notified_users
  #   mentioned_users.each do |user|
  #     Mail.new(user)
  #   end
  #  end
   
   
  def mentions
    @mentions ||= begin
                    regex = /@([\w]+)/
                    body.scan(regex).flatten
                  end
  end

  def mentioned_users
    @mentioned_users ||= User.where(username: mentions)
  end
end
