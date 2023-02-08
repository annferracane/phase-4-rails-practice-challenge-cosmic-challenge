class Mission < ApplicationRecord
    validate :name, presence: true
end
