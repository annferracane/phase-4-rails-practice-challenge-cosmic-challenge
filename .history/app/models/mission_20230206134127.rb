class Mission < ApplicationRecord
    belongs_to :scientist
    belongs_to: 
    validate :name, presence: true
end
