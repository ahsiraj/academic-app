Rails.application.routes.draw do
  devise_for :users
  #root "application#hello"
  #devise_for :users
  #5/11 devise_for :users, controllers: {
  #          sessions: "users/sessions",
  #       } #5/11

  #          :controllers => { registrations: "registrations" } #5/11

  #5/11
=begin devise_for :users, controllers: {
                       sessions: "users/sessions",
                       passwords: "users/passwords",
                       registrations: "users/registrations",
                     }
=end
=begin devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
    get "/users/sign_in" => "devise/sessions#new", as: :new_user_session
=end

  #, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root  redirect('/about.html')
  #root  "home#index"
  root "academics#index" #ok
  get "academics/about"
  get "academics/index"
  get "academics", to: "academics#index"
  #get "login", to: "sessions#new", as: "login"
  #get 'admins', to: 'admins/admins#index'

  #post "users/sign_in" => "devise/sessions#create", as: :new_sessions #ok
  #get "users/sign_in" => "devise/sessions#create", as: :new_sessions #ok
  #delete "/users/sign_out" => "devise/sessions#destroy", as: :destroy_user_session_path

  #resources :user_session
  #get "/signin" => "sessions#new", as: :new_sessions

  get "attendances/mark_all" => "attendances#mark_all"

  resources :users
  resources :academics
  #ActiveAdmin.routes(self)
  resources :timetables
  resources :time_slots
  resources :subjects
  resources :student_subjects
  resources :faculty_subjects
  resources :attendances
end
