class PlanetsController < ApplicationController

    def index
        render json: Planet.all, except: [ :created_at, :updated_at ] status: :ok
    end

end
