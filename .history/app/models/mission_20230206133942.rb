class Mission < ApplicationRecord
    validate :name, presence: true
    validate :scientist_id, presence: true
    validate :name, presence: true
end
