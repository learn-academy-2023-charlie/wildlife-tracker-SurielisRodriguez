Rails.application.routes.draw do
  resources :animals


  # index
  root "animals#index"
  #create
  post '/animals' => 'animals#create'
  #new animal
  get '/animals/new' => 'animals#new', as: 'new_animal'
  #edit animal
  get '/animals/:id/edit' => 'animals#edit'
  #show
  get '/animals/:id' => 'animals#show'
  #delete
  delete '/animals/:id' => 'animals#destroy'
  
end
