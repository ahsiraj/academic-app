class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :code
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
