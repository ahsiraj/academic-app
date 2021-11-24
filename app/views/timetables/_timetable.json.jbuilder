json.extract! timetable, :id, :day, :slot, :subject_id, :created_at, :updated_at
json.url timetable_url(timetable, format: :json)
