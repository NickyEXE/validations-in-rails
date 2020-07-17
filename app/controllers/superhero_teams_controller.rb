class SuperheroTeamsController < ApplicationController
  def create
    st = SuperheroTeam.create(superhero_team_params)
    redirect_to st.superhero
  end

  private

  def superhero_team_params
    params.require(:superhero_team).permit(:team_id, :superhero_id)
  end

end
