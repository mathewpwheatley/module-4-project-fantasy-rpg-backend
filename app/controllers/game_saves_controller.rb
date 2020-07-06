class GameSavesController < ApplicationController

    def index
        game_saves = GameSave.all
        render json: GameSaveSerializer.new(game_saves)
    end

    def show
        game_save = GameSave.find(params[:id])
        render json: GameSaveSerializer.new(game_save)
    end

end
