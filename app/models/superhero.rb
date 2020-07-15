class Superhero < ApplicationRecord
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
