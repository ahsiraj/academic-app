Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  #, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root to: redirect('/about.html')
  #root to: "home#index"
  #root "academics#index" #ok

  root to: "academics#index"

  get "academics/index"
  get "academics", to: "academics#index"


  #post 	"users/sign_in" =>  "devise/sessions#create",  as: :new_sessions
  #delete "/users/sign_out" => "devise/sessions#destroy", as: :destroy_user_session_path






  #resources :user_session
  #get "/signin" => "sessions#new", as: :new_sessions
  #resources :users
  resources :academics
end
