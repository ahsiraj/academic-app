class CreateFaculties < ActiveRecord::Migration[6.1]
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :subject

      t.timestamps
    end
  end
end
