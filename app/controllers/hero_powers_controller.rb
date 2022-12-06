class HeroPowersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_hero_power_not_created_response
wrap_parameters format: []
    
    def create
        hero_power = HeroPower.create(hero_power_params)
        render json: hero_power.hero
    end

    private

    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end

    def render_hero_power_not_created_response
        render json: { errors: invalid.record.errors}, status: 422
    end
end
