class Station < ApplicationRecord
  has_many :drones
  has_ancestry
end
