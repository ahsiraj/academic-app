class StudentSubject < ApplicationRecord
  has_many :users
  has_many :subjects #15/11
end
