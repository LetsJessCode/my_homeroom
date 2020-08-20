Rails.application.routes.draw do
  
  devise_for :students
    root to: 'static#home'

      resources :assignments 
    resources :subjects  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
