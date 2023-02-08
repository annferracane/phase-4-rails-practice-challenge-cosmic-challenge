class Scientist < ApplicationRecord
    validate :name, presence: true, uniqueness: true
    validate :field_of_study, presence: true
end
