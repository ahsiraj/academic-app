class CreateTimetables < ActiveRecord::Migration[6.1]
  def change
    create_table :timetables do |t|
      t.string :day
      t.integer :slot
      t.string :subject

      t.timestamps
    end
  end
end
