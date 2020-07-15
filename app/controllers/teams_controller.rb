class TeamsController < ApplicationController

    def create
        team = Team.create(strong_params)
        redirect_to team.cameo_character
    end

    def strong_params
        params.require(:team).permit(:main_character_id, :cameo_character_id)
    end
end
