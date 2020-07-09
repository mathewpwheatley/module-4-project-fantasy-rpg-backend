class ModifiersController < ApplicationController

    def index
        modifiers = Modifier.all
        render json: ModifierSerializer.new(modifiers)
    end

    def show
        modifier = Modifier.find(params[:id])
        render json: ModifierSerializer.new(modifier)
    end

    def create
        modifier = Modifier.create(modifier_params)
        if modifier.valid?
            render json: ModifierSerializer.new(modifier)
        else
            render json: {errors: modifier.errors.full_messages}
        end
    end

    def update
        modifier = Modifier.find(params[:id])
        modifier.update(modifier_params)
        if modifier.valid?
            render json: ModifierSerializer.new(modifier)
        else
            render json: {errors: modifier.errors.full_messages}
        end
    end

    def destroy
        modifier = Modifier.find(params[:id])
        if modifier
            modifier.destroy
            render json: {deleted: ModifierSerializer.new(modifier)}  
        else
            render json: {errors: ["Modifier not found"]}
        end       
    end

    private

    def modifier_params
        params.require(:modifier).permit(:health_effect, :healing_effect, :damage_effect, :cooldown_effect, :game_save_id)
    end

end
