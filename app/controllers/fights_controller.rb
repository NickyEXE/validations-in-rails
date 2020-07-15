class FightsController < ApplicationController


    def create
        @fight = Fight.create(strong_params)
        redirect_to @fight.aggressor
    end


    def strong_params
        params.require(:fight).permit(:defender_id, :aggressor_id)
    end
end
