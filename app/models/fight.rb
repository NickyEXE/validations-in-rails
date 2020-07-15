class Fight < ApplicationRecord
  belongs_to :aggressor, class_name: "Superhero"
  belongs_to :defender, class_name: "Superhero"
end
