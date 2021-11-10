Rails.application.routes.draw do
  #root "application#hello"
  #devise_for :users
  #5/11 devise_for :users, controllers: {
  #          sessions: "users/sessions",
  #       } #5/11

  #          :controllers => { registrations: "registrations" } #5/11

  #5/11
  devise_for :users, controllers: {
                       sessions: "users/sessions",
                       passwords: "users/passwords",
                       registrations: "users/registrations",
                     }

  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
    # get "/users/sign_in" => "devse/sessions#new", as: :new_sessions
  end

  #, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root to: redirect('/about.html')
  #root to: "home#index"
  #root "academics#index" #ok

  #root to: "academics#index"

  get "academics/index"
  get "academics", to: "academics#index"

  #get 'admins', to: 'admins/admins#index'

  #post 	"users/sign_in" =>  "devise/sessions#create",  as: :new_sessions
  #delete "/users/sign_out" => "devise/sessions#destroy", as: :destroy_user_session_path

  #resources :user_session
  #get "/signin" => "sessions#new", as: :new_sessions
  resources :users
  resources :academics
  #ActiveAdmin.routes(self)

end
