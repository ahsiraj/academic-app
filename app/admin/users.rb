=begin ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :email, :role, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :role, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  #ask 20/10
  permit_params do
    permitted = [:name, :email, :role, :encrypted_password]
    permitted << :other if params[:action] == "create" && current_user.admin?
    permitted
  end
=end

ActiveAdmin.register User do
  permit_params :name, :email, :role, :password
  index do
    column :name
    column :email
    column :role

    actions
  end
  form do |f|
    f.inputs "User Details" do
      f.inputs :name
      f.inputs :email
      f.inputs :role
      f.inputs :password
    end
    f.actions
  end
end
