class Event < ApplicationRecord

  belongs_to :user
  belongs_to :eventables, polymorphic: true
end
