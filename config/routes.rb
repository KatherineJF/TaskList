Rails.application.routes.draw do
  root 'tasks#index'
  # get '/tasks', to: 'tasks#index'
  # get '/tasks/:id', to: 'tasks#show', as: 'task'
  resources :tasks, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
