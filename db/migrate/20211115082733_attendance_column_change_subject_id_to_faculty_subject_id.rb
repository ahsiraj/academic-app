class AttendanceColumnChangeSubjectIdToFacultySubjectId < ActiveRecord::Migration[6.1]
  def change
    rename_column :attendances, :subject_id, :faculty_subject_id
  end
end
