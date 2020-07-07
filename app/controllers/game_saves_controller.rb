class GameSavesController < ApplicationController

    def index
        game_saves = GameSave.all
        render json: GameSaveSerializer.new(game_saves)
    end

    def show
        game_save = GameSave.find(params[:id])
        render json: GameSaveSerializer.new(game_save)
    end

    def create
        game_save = GameSave.create(game_save_params)
        if game_save.valid?
            render json: GameSaveSerializer.new(game_save)
        else
            render json: game_save.errors.full_messages
        end
    end

    def update
        game_save = GameSave.find(params[:id])
        game_save.update(game_save_params)
        if game_save.valid?
            render json: GameSaveSerializer.new(game_save)
        else
            render json: game_save.errors.full_messages
        end
    end

    def destroy
        game_save = GameSave.find(params[:id])
        game_save.destroy
        render json: GameSaveSerializer.new(game_save)        
    end

    private

    def game_save_params
        params.require(:game_save).permit(:user_id, :character_id, :round)
    end

end
