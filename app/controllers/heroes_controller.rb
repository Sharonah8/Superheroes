class HeroesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
        def index
            heroes = Hero.all 
            render json: heroes
        end
    
        def show
            hero = Hero.find_by!(id: params[:id])
            render json: hero
        end
    
        private

        def render_not_found_response
            render json: { error: "Hero not found" }, status: 404
        end
    
    end
    
