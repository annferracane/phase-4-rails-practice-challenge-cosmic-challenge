class Mission < ApplicationRecord
    belongs_to :scientist
    belongs_to :planet
    
    validates :name, presence: true
    validates_uniqueness_of :scientist_id, scope: :name
    validates_uniqueness_of :teacher_id, scope: [:semester_id, :class_id]
end
