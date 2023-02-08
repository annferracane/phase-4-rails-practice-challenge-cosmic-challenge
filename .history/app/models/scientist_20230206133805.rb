class Scientist < ApplicationRecord
    validate :name, :presence true, uniq
    validate :field_of_study, :presence true
end
