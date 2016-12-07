class Personnel < ActiveRecord::Base
  has_many :prestations
  has_many :massages, through: :prestations
  has_many :users, through: :prestations
  has_many :accompagnements, through: :prestations

end
