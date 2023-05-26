Rails.application.routes.draw do
  resources :sightings
  resources :animals

##ANIMALS
  # index
  root "animals#index"
  #create
  post '/animals' => 'animals#create'
  #new animal
  get '/animals/new' => 'animals#new'

  #edit animal
  get '/animals/:id/edit' => 'animals#edit'
  #patch
  patch '/animals/:id' => 'animals#update'
  #show
  get '/animals/:id' => 'animals#show'
  #delete
  delete '/animals/:id' => 'animals#destroy'

##SIGHTINGS
#index
  get '/sightings' => 'sightings#index'
#create
  post '/sightings' => 'sightings#create'
#new
  get '/sightings/new' => 'sightings#new'
#edit
  get '/sightings/:id/edit' => 'sightings#edit'
#show
  get '/sightings/:id' => 'sightings#show'
#patch
  patch '/sightings/:id' => 'sightings#update'
#destroy
  delete '/sightings/:id' => 'sightings#destroy'

end
