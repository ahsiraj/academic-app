ActiveAdmin.register Attendance do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  #V
  permit_params :date, :slot, :faculty_subject_id, :student_id
  index do
    column :date
    column :slot
    column :faculty_subject_id
    column :student_id
    actions
  end
  form do |f|
    f.inputs "Attendance Details" do
      f.inputs :date
      f.inputs :slot
      #f.input :faculty_subject_id, as: :select, collection: FacultySubject.all.map { |a| a.subject_id }
      f.input :faculty_subject_id, as: :select, collection: FacultySubject.where(:faculty_id => current_user.id)

      # f.input :student_id, as: :select, collection: User.all.map { |a| a.role == "student" }
      f.input :student_id, :as => :select, :collection => User.where(:role => "student") #, :active => true).order(:name), :include_blank => true
    end
    f.actions
  end
  #ask 8/11 & 15/11^
  #
  # or
  #
  # permit_params do
  #   permitted = [:date, :slot, :subject_id, :student_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
