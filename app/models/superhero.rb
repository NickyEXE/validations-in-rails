class Superhero < ApplicationRecord
    # Team
    has_many :main_appearances, foreign_key: :main_character_id, class_name: 'Team'
    has_many :sidekick_appearances, foreign_key: :cameo_character_id, class_name: 'Team'
    has_many :sidekicks, through: :main_appearances, source: "cameo_character"
    has_many :main_characters, through: :sidekick_appearances, source: "main_character"

    # Team.select{|fight| fight.main_character_id === self.id}
    #
    # Superhero

    def cheese
        "cheese"
    end


    validates :name, :power, :weakness, :power_level, presence: true
    validates :power_level, inclusion: { in: (1..10), message: "%{value} is an invalid power level. %{attribute} levels must be between 1-10."}
    validate :doctor_doom_blocker
    # validates does rails' built in validation methods
    # validate does your own validation method
    # validates_with is useful
    # for when you have a validation class shared between multiple models

    private

    def doctor_doom_blocker
        if name.downcase.include?("doom")
            errors.add(:name, "Doom and his minions cannot be added to the Hall of Justice")
        end
    end

end
