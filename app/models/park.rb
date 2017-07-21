class Park < ApplicationRecord
  validates :park_name, :location, presence: true
  # scope :name, ->(name) {where(park_name: name)}
end
