ActiveAdmin.register Prestation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :user_id, :massage_id, :accompagnement_id, :personnel_id, :start_time, :date, :personnel_ids => []


# form do |f|
#     f.input :technicians, as: :check_boxes, :collection => User.all.map{ |tech|  [tech.surname, tech.id] }
#     f.actions
#   end

#   permit_params :name, :description, :instrumentID, :technician_ids => []
# end

form do |f|
  f.inputs "Date de reservation" do # physician's fields
    f.input :date
    f.input :personnel, :collection => Personnel.all
    # .map{ |per|  [per.prenom, per.id] }
    f.actions
  end

  # f.has_many :personnels do |app_f|
  #   app_f.inputs :personnels
  # #     # if !app_f.object.nil?
  # #     #   # show the destroy checkbox only if it is an existing appointment
  # #     #   # else, there's already dynamic JS to add / remove new appointments
  # #     #   app_f.input :_destroy, :as => :boolean, :label => "Destroy?"
  # #     # end

  # #     app_f.input :personnel # it should automatically generate a drop-down select to choose from your existing patients
  # #     # app_f.input :appointment_date
  # #   end
  #  end
end
# create_table "prestations", force: :cascade do |t|
#     t.datetime "date"
#     t.integer  "user_id"
#     t.integer  "massage_id"
#     t.integer  "accompagnement_id"
#     t.integer  "personnel_id"
#     t.datetime "created_at",        null: false
#     t.datetime "updated_at",        null: false
#     t.datetime "start_time"
#     t.datetime "end_time"
#   end




#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
