class Component < ApplicationRecord
  belongs_to :constellation
  has_many :events
end
