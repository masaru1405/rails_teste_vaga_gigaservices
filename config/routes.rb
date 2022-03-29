Rails.application.routes.draw do
  root 'persons#index'
  #get 'persons/index'
  get 'persons/show'
  
end
