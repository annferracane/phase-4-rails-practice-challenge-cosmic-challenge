class Mission < ApplicationRecord
    belongs_to :scien, class_name: "scien", foreign_key: "scien_id"
    validate :name, presence: true
end
