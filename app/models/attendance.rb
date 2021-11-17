class Attendance < ApplicationRecord
  has_many :faculty_subjects
  has_many :users #15/11
  #  after_initialize :set_default_subject, :if => :new_record?

  # def set_default_subject
  #  self.category ||= "Core"
  #end
end
