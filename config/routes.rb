Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root to: redirect('/about.html')
  root "academics#index"
  get "academics/index"
  get "academics", to: "academics#index"
  #resources :user_session
  get "/signin" => "sessions#new", as: :new_sessions
  resources :users
  resources :academics
end
