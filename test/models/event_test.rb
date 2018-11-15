# == Schema Information
#
# Table name: events
#
#  id             :bigint(8)        not null, primary key
#  action         :string
#  eventable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  eventable_id   :integer
#  user_id        :integer
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
