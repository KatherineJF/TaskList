Rails.application.routes.draw do
  root 'tasks#index'
  # get '/tasks', to: 'tasks#index'
  # get '/tasks/:id', to: 'tasks#show', as: 'task'


  patch 'complete/tasks/:id', to: 'tasks#complete', as: 'complete_task'

  resources :tasks


  # delete '/tasks/:id', to: 'tasks#destroy', as :'delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
