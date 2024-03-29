Rails.application.routes.draw do
  resources :admissions
  resources :diagnoses
  resources :assigned_staffs
  resources :assigned_staff_types
  resources :legal_guardians
  resources :patients
  resources :sexes
  resources :relationships
  resources :languages
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "patients#index"
end
