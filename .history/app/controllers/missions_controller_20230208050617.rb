class MissionsController < ApplicationController

    def create
        mission = Mission.create!
    end

    private 

    def mission_params
        
    end
end
