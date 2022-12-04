class PowersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_power_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_response

    def index
        powers = Power.all
        #, serializer: :PowerSerializer
        render json: powers 
    end

    def show
        power = Power.find(params[:id])
        render json: power
    end

    def update
        power = Power.find(params[:id])
        power.update(power_params)
        render json: power
    end

    private

    def render_power_not_found_response
        render json: { error: "Power not found"}, status: 404
    end

    def power_params
        params.permit(:description)
    end

    def render_invalid_response
        render json: { errors: invalid.record.errors }, status: 422
    end
end
