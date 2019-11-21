Rails.application.routes.draw do
  
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  resources :people do
    resources :lesson_payments
    resources :lesson_details
  end 
end
