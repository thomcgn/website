Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions'}
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root "main#index"
end
