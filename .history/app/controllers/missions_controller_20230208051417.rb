class MissionsController < ApplicationController

    def create
        mission = Mission.create!(mission_params)
        planet = Planet.find(mission.planet_id)
        render json: mission, except: [ :created_at, :updated_at ], status: :created
    end

    private 

    def mission_params
        params.permit(:name, :scientist_id, :planet_id)
    end
end
