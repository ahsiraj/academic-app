class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  #ref https://stackoverflow.com/questions/24479839/multiple-types-of-users-on-ruby-on-rails/24480937
  enum role: [:student, :faculty, :admin]

  #31/10
  #ref http://dan.doezema.com/2012/02/how-to-implement-a-single-user-model-with-rails-activeadmin-and-devise/
  #attr_accessible :email, :password, :password_confirmation,
  #                :remember_me

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :student
  end
end
