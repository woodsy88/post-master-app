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

class Event < ApplicationRecord

  belongs_to :user
  belongs_to :eventable, polymorphic: true
end
