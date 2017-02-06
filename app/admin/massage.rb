ActiveAdmin.register Massage do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :nom, :description, :temps, :prix, :start_time, :end_time
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

t.string   "nom"
    t.text     "description"
    t.integer  "temps"
    t.integer  "prix"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.datetime "start_time"
    t.datetime "end_time"
  end

end
