class Prestation < ActiveRecord::Base
  belongs_to :user
  belongs_to :massage
  belongs_to :accompagnement
  belongs_to :personnel


  # validates :user, presence: true
  # validates :personnel, presence: true
  # validates :prestation, inclusion: { in: [:massage, :accompagnement] }
  #

end
