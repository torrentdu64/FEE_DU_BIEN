class Massage < ActiveRecord::Base
  has_many :prestations
  has_many :personnels, through: :prestations
  has_many :users, through: :prestations



  validates :nom, presence: true
  validates :description, presence: :true
  validates :temps, numericality: true
  validates :prix, numericality: true


  # def start_time
  #   self.massage.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  # end
  #
  def name
    "#{nom}"
  end
end

# massages", force: :cascade do |t|
#     t.string   "nom"
#     t.text     "description"
#     t.integer  "temps"
#     t.integer  "prix"
#     t.datetime "created_at",  null: false
#     t.datetime "updated_at",  null: false
#     t.datetime "start_time"
#     t.datetime "end_time"
