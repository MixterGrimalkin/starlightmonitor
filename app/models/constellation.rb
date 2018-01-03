class Constellation < ApplicationRecord
  has_many :components
  has_many :star_events, through: :components
end
