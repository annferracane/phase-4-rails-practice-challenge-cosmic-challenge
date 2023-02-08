class Mission < ApplicationRecord
    validate :name, presence: true
    validate :scientist_id, unique
end
