class ModifiersController < ApplicationController

    def index
        modifiers = Modifier.all
        render json: ModifierSerializer.new(modifiers)
    end

    def show
        modifier = Modifier.find(params[:id])
        render json: ModifierSerializer.new(modifier)
    end

end
