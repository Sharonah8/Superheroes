class HerosController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        heroes = Hero.all 
        render json: heroes
    end

    def show
        heroes = Hero.find(id: params[:id])
        render json: heroes
    end

    private
    def render_not_found_response
        render json: { error: "Hero not found" }, status: 404
    end

end
