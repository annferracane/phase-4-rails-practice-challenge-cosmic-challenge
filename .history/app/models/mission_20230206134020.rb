class Mission < ApplicationRecord
    validate :name, presence: true
    validate :scei
end
