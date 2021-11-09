ActiveAdmin.register FacultySubject do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :faculty_id, :subject_id
  #v
  permit_params :faculty_id, :subject_id
  index do
    column :faculty_id
    column :subject_id
    actions
  end
  form do |f|
    f.inputs "Faculty assigned Subjects" do
      f.input :faculty_id, as: :select, collection: User.where(:role => "faculty")
      f.input :subject_id, as: :select, collection: Subject.all
    end
    f.actions
  end
  #^ ask 8/11
  #
  # or
  #
  # permit_params do
  #   permitted = [:faculty_id, :subject_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
#f.input :student_id, :as => :select, :collection => User.where(:role => "student") #, :active => true).order(:name), :include_blank => true
