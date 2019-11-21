Rails.application.routes.draw do
  
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  resources :people do
    resources :lesson_payments
  end 
  resources :lessons
  resources :lesson_details
end
