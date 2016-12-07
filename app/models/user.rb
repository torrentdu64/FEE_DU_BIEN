class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :prestations
  has_many :massages, through: :prestations
  has_many :accompagnements, through: :prestations
  has_many :personnels, through: :prestations

  validates :nom, presence: true
  validates :prenom, presence: true

end






