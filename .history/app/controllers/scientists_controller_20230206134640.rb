class ScientistsController < ApplicationController

    def index
        render json: Scientist.all, status: :ok
    end

    def show
        
    end
end
