class HeroPowersController < ApplicationController
#rescue_from ActiveRecord::RecordNotFound, with: :render_hero_power_not_created_response
rescue_from ActiveRecord::RecordInvalid, with: :record_not_found

    
    def create
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power, serializer: HeroPowerSerializer
    end

    private

    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end

    # def render_hero_power_not_created_response
    #     render json: { errors: invalid.record.errors}, status: 422
    # end

    def record_not_found
        render json: { "errors": ["validation errors"]}
    end
end
