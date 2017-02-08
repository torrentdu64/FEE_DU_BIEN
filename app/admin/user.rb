ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :email, :address, :nom, :prenom, :phone, :admin
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
index do
      selectable_column
      column :id
      column :email
      column :nom
      column :prenom
      column :created_at
      column :sign_in_count
      column :admin
      column :phone
      column :address
      actions
  end

  # "users", force: :cascade do |t|
#     t.string   "email",                  default: "",    null: false
#     t.string   "encrypted_password",     default: "",    null: false
#     t.string   "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.integer  "sign_in_count",          default: 0,     null: false
#     t.datetime "current_sign_in_at"
#     t.datetime "last_sign_in_at"
#     t.inet     "current_sign_in_ip"
#     t.inet     "last_sign_in_ip"
#     t.datetime "created_at",                             null: false
#     t.datetime "updated_at",                             null: false
#     t.string   "address"
#     t.string   "nom"
#     t.string   "prenom"
#     t.string   "phone"
#     t.boolean  "admin",

end
