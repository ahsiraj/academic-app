class CreateFacultyEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :faculty_emails do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
