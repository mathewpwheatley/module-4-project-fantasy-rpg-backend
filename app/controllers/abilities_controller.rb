class AbilitiesController < ApplicationController

    def index
        abilities = Ability.all
        render json: AbilitySerializer.new(abilities)
    end

    def show
        ability = Ability.find(params[:id])
        render json: AbilitySerializer.new(ability)
    end

end
