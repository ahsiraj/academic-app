Rails.application.routes.draw do
  get "academics/index"
  get "academics", to: "academics#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
