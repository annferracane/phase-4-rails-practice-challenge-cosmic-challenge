class Mission < ApplicationRecord
    validate :name, presence: true
    validate :scientist, presence: true
    validate :name, presence: true
end
