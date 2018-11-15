# == Schema Information
#
# Table name: posts
#
#  id              :bigint(8)        not null, primary key
#  body            :text
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  forum_thread_id :bigint(8)
#  user_id         :bigint(8)
#
# Indexes
#
#  index_posts_on_forum_thread_id  (forum_thread_id)
#  index_posts_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (forum_thread_id => forum_threads.id)
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
