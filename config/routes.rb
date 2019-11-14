Rails.application.routes.draw do
  # get 'lesson_payments/index'
  # get 'lesson_payments/show'
  # get 'lesson_payments/new'
  # get 'lesson_payments/edit'
  # get 'static_pages/home'
  # get 'static_pages/about'
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  resources :people do
    resources :lesson_payments
    resources :lesson_details
  end 
end
