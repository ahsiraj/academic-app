json.extract! attendance, :id, :date, :slot, :faculty_id, :subject_id, :student_id, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
