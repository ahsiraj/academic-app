class CreateStaffAdvisors < ActiveRecord::Migration[6.1]
  def change
    create_table :staff_advisors do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
