class Team < ApplicationRecord
    belongs_to :main_character, class_name: 'Superhero'
    belongs_to :cameo_character, class_name: 'Superhero'
end
