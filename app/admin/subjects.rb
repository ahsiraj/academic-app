ActiveAdmin.register Subject do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :code, :name, :type
  #
  # or
  #
  # permit_params do
  #   permitted = [:code, :name, :type]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  #v
  index do
    column :id
    column :code
    column :name
    column :category
    actions
  end
  form do |f|
    f.inputs "Subject Details" do
      f.inputs :code
      f.inputs :name
      f.input :category, as: :select, collection: (["Core", "Elective"])
    end
    f.actions
  end
  #^ ask 7/11

end
