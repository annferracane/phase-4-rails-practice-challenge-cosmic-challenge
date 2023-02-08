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

    def render_invalid(e)
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity

    end

    def record_not_found
        render json: {errors: "Record Not Found" }, status: :not_found

    end
end
