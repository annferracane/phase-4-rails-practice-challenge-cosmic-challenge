class Mission < ApplicationRecord
    belongs_to :object, class_name: "object", foreign_key: "object_id"
    validate :name, presence: true
end
