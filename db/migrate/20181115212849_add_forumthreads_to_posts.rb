class AddForumthreadsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :forum_thread, foreign_key: true
  end
end
