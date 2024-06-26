Rails.application.routes.draw do
  get 'user_awards/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'tops#index'
  resources :reports
  resources :users, only: [:show]

end
