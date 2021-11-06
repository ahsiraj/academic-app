ActiveAdmin.register TimeSlot do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :slot, :from, :to

  permit_params :slot, :from, :to
  # ask 6/11 ^

  #
  # or
  #
  # permit_params do
  #   permitted = [:slot, :from, :to]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
