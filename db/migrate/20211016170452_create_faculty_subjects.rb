class CreateFacultySubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :faculty_subjects do |t|
      t.integer :faculty_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
