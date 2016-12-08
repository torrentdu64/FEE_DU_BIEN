class Accompagnement < ActiveRecord::Base
  has_many :prestations
  has_many :personnels, through: :prestations
  has_many :users, through: :prestations

  validates :nom, presence: true
  validates :description, presence: true
  validates :temps, numericality: true
  validates :prix, numericality: true

end




