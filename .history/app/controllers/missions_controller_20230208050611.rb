class MissionsController < ApplicationController

    def create
        mission = Mission.create!
    end
end
