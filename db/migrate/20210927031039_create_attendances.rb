class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.date :date
      t.integer :slot
      t.string :subject
      t.integer :student

      t.timestamps
    end
  end
end
