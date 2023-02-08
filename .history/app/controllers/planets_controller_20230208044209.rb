class PlanetsController < ApplicationController

    def index
        render json: Planet.all, except: status: :ok
    end

end
