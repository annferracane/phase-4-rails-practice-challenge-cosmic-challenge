class ScientistsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :

    def index
        render json: Scientist.all, status: :ok
    end

    def show
        render json: Scientist.find(params[:id]), include: ['planets'] status: :ok
    end
end
