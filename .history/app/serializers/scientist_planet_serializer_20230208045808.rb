class ScientistPlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :field_of_study, :avatar

  def planet_id
    
  end
end
