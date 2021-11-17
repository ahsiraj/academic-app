class Timetable < ApplicationRecord
  has_many :time_slots
  has_many :subjects #15/11

  #enum day: [:Monday, :Tuesday, :Wednesday]
  #enum day: { mon: "Monday", tues: "Tuesday", wed: "Wednesday" }
  #both are ineffective now 6/11
end
