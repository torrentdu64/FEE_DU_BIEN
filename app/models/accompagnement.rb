class Accompagnement < ActiveRecord::Base
  has_many :prestations
  has_many :personnels, through: :prestations
  has_many :users, through: :prestations

end
