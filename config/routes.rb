Rails.application.routes.draw do
  root 'public#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  match "signup/step-1" => "public#step_1", via: [:get, :post]
  match "signup/step-2" => "public#step_2", via: [:get, :post]
  match "signup/step-3" => "public#step_3", via: [:get, :post]
  match "signup/step-4" => "public#step_4", via: [:get, :post]
end
