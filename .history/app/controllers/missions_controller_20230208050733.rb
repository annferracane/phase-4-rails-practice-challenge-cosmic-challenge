class MissionsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: record

    def create
        mission = Mission.create!(mission_params)
        render json: mission, status: :created
    end

    private 

    def mission_params
        params.permit(:name, :scientist_id, :planet_id)
    end


end
