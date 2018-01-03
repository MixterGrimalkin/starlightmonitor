class Component < ApplicationRecord
  belongs_to :constellation
  has_many :star_events
end
