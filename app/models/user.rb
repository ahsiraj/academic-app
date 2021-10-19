class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  #ref https://stackoverflow.com/questions/24479839/multiple-types-of-users-on-ruby-on-rails/24480937
  enum role: [:student, :faculty, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :student
  end
end
