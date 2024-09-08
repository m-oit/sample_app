Rails.application.routes.draw do
  get 'lists/new'
  get 'top' => 'homes#top'
  
  get '/homes/top', to: 'homes#top'
  get 'lists/:id/edit', to: 'lists#edit', as: 'edit_list'

  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
  
  end