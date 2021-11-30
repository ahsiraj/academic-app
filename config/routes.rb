Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  root "academics#index"
  get "academics/about"
  get "academics/index"
  get "academics", to: "academics#index"

  get "attendances/mark_all" => "attendances#mark_all"

  resources :users
  resources :academics
  resources :timetables
  resources :time_slots
  resources :subjects
  resources :student_subjects
  resources :faculty_subjects
  resources :attendances
end
