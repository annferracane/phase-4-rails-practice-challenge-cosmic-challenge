class Scientist < ApplicationRecord
    has_many :missions
    has_many :planets, through: 
    validate :name, presence: true, uniqueness: true
    validate :field_of_study, presence: true
end
