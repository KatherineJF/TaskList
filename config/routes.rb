Rails.application.routes.draw do

  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # resources :tasks, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
