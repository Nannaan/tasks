Rails.application.routes.draw do
  root to: "tasks#index"
  resources :tasks, only: [:index, :new, :create, :destroy, :edit, :update] do
    collection do
      delete 'destroy_all'
    end
  end
end
