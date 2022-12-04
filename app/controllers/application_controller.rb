class ApplicationController < ActionController::API

    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_method

    def unprocessable_entity_method
        render json: { errors: entity.record.errors }, status: 422
    end
end
