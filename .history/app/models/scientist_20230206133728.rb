class Scientist < ApplicationRecord
    validate :name, :presence true
end
