class Subject < ApplicationRecord
  after_initialize :set_default_category, :if => :new_record?

  def set_default_category
    self.category ||= "Core"
  end
end
