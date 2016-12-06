class Prestation < ActiveRecord::Base
  belongs_to :user
  belongs_to :massage
  belongs_to :accompagnement
  belongs_to :personnel
end
