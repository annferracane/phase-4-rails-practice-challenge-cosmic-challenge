class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid, with: :render_invalid
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

private

    def render_invalid(e)
        #render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
        render json: { errors: "validation errors" }, status: :unprocessable_entity
    end

    def record_not_found
        render json: {errors: "Scientist not found" }, status: :not_found
    end

end
