class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :subject1
      t.string :subject2
      t.string :subject3
      t.string :elective1
      t.string :elective2

      t.timestamps
    end
  end
end
