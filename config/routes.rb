Rails.application.routes.draw do
  resources :sequences, only: [:new, :create, :show]

  root "sequences#index"
end
