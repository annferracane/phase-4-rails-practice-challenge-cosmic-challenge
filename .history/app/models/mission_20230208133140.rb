class Mission < ApplicationRecord
    belongs_to :scientist
    belongs_to :planet
    
    validates :name, presence: true
    validates_uniqueness_of :name, :scientist_id,
end
