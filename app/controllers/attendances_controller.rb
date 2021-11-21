#ask 20/11 file manually created. seems not reaching
class AttendancesController < ApplicationController
  def index
    sublist = FacultySubject.where(:faculty_id => current_user.id)
    @attendances = sublist.attendances
    yyyyputssfffffffffs "test"
  end
end
