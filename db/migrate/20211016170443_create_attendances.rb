class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.date :date
      t.integer :slot
      t.integer :subject_id
      t.integer :student_id

      t.timestamps
    end
  end
end
