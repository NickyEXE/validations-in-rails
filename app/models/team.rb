class Team < ApplicationRecord
    has_many :superhero_teams
    has_many :superheros, through: :superhero_teams

    # def verbose_selection
    #     "#{id} is the id of the #{name}"
    # end
end
