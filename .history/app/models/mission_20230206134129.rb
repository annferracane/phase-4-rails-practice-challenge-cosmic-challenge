class Mission < ApplicationRecord
    belongs_to :scientist
    belongs_to: planet
    validate :name, presence: true
end
