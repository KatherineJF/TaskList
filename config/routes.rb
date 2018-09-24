Rails.application.routes.draw do
  root 'tasks#index'
  # get '/tasks', to: 'tasks#index'
  # get '/tasks/:id', to: 'tasks#show', as: 'task'
  get '/tasks/completed', to: 'tasks#completed', as: :completed_tasks
  put '/tasks/:id/complete', to: 'tasks#complete', as: :complete_tasks


  resources :tasks
  # delete '/tasks/:id', to: 'tasks#destroy', as :'delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
