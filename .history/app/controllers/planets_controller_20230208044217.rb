class PlanetsController < ApplicationController

    def index
        render json: Planet.all, except: [ :created_at, upd] status: :ok
    end

end
