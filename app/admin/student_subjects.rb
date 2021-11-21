ActiveAdmin.register StudentSubject do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :student_id, :subject_id
  #v
  permit_params :student_id, :subject_id
  index do
    column :id
    column :student_id
    column :subject_id
    actions
  end
  form do |f|
    f.inputs "Student assigned Subjects" do
      f.input :student_id, as: :select, collection: User.where(:role => "student")
      f.input :subject_id, as: :select, collection: Subject.all
    end
    f.actions
  end
  #^ ask 8/11
  #
  # or
  #
  # permit_params do
  #   permitted = [:student_id, :subject_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
