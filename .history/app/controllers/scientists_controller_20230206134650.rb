class ScientistsController < ApplicationController

    def index
        render json: Scientist.all, status: :ok
    end

    def show
        render json: Scientist.find(params[:id]), status: :ok
    end
end
