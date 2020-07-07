Rails.application.routes.draw do
  resources :corona_data
  resources :conditions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
