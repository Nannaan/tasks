Rails.application.routes.draw do
  root to: "tasks#index"
  resources :tasks, only: [:index, :new, :create, :destroy, :edit, :update]
  post '/tasks/new', to: 'tasks#create'
end
