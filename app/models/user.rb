class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #
  #
  #  devise :database_authenticatable, :registerable,
  #         :recoverable, :rememberable, :validatable
  # has_many :attendances, foreign_key: :faculty_id, inverse_of: :user
  #end

  #27/11 Above 4 lines commented out and all contents below added

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

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :registerable
  has_many :attendances, foreign_key: :faculty_id, inverse_of: :user #27/11
  #registerable added on 8/11, commented 9/11, added on 27/11
  #:trackable #5/11 this line -- error
  #attr_accessor :present
  #attr_accessible :present
  @present = true
end
