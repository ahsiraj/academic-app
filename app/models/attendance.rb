class Attendance < ApplicationRecord
  belongs_to :faculty_subject
  #has_many :users #15/11
  #  after_initialize :set_default_subject, :if => :new_record?

  # def set_default_subject
  #  self.category ||= "Core"
  #end
end
