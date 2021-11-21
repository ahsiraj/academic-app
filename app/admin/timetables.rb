ActiveAdmin.register Timetable do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :day, :slot, :subject_id

  permit_params :day, :slot, :subject_id
  # ask 6/11 ^

  #
  # or
  #
  # permit_params do
  #   permitted = [:day, :slot, :subject_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    column :id
    column :day
    column :slot
    column :subject_id
    actions
  end
  form do |f|
    f.inputs "Timetable Details" do
      #f.inputs :day
      f.input :day, as: :select, collection: (["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"])
      f.inputs :slot
      f.input :subject_id, as: :select, collection: Subject.all #.map { |a| a.name }
    end
    f.actions
  end
end
