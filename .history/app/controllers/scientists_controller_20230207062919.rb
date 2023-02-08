class ScientistsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_invalid
rescue_from ActiveRecord::RecordNotFoun, with: :record_not_found

    def index
        render json: Scientist.all, status: :ok
    end

    def show
        render json: Scientist.find(params[:id]), include: ['planets'] status: :ok
    end

    def create
        scientist = Scientist.create(scientist_params)
        render json: scientist, status: :created
    end

    private

    def scientist_params
        params.permit(:name, :field_of_study, :avatar)
    end

    def render_invalid(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
        render json: { errors: "validation errors" }, status: :
    end

    def record_not_found
        render json: {errors: "Scientist not found" }, status: :not_found
    end
end
