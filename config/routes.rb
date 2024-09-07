Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/edit'
  get 'top' => 'homes#top'
  
  get '/homes/top', to: 'homes#top'

  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
  
  end