class Personnel < ActiveRecord::Base
  has_many :prestations
  has_many :massages, through: :prestations
  has_many :users, through: :prestations
  has_many :accompagnements, through: :prestations

  validates :nom, presence: true
  validates :prenom, presence: true
  validates :description, presence: true
  validates :adresse, presence: true
  validates :horaire, presence: true
  validates :phone, numericality: true, presence: true


  def name
    "#{prenom} #{nom}"
  end
end


