class CreateTimeSlots < ActiveRecord::Migration[6.1]
  def change
    create_table :time_slots do |t|
      t.integer :slot
      t.time :from
      t.time :to

      t.timestamps
    end
  end
end
