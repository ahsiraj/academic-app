class Attendance < ApplicationRecord
  belongs_to :user, foreign_key: :faculty_id, inverse_of: :attendances, :optional => true
end
