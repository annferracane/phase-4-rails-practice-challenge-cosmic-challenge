class ScientistsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_invalid
rescue_from ActiveRecord::RecordNotFoun, with: :record_not_found

    def index
        render json: Scientist.all, status: :ok
    end

    def show
        render json: Scientist.find(params[:id]), include: ['planets'] status: :ok
    end

    private

    def render_invalid
        
    end
end
