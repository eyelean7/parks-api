class Park < ApplicationRecord
  validates :park_name, :location, presence: true
end
