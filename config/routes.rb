Rails.application.routes.draw do
  
    root to: 'static#home'

    resources :students
    resources :assignments 
    resources :subjects  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
