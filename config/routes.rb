Rails.application.routes.draw do
  root 'persons#index'
  resources :persons, only: [:index, :show]
  
end
