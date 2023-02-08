class ScientistPlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :field_of_study, :avatar

  has_many :items, serializer: CustomItemSerializer
end
