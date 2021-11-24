class AttendanceChange < ActiveRecord::Migration[6.1]
  def change
    rename_column :attendances, :faculty_subject_id, :subject_id
    add_column :attendances, :faculty_id, :integer
  end
end
