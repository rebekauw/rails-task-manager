Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :tasks
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # Read all tasks
  root to: "tasks#index"

  # Index route for tasks
  get 'tasks', to: 'tasks#index'

  # New route for creating a new task
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  # Show route for a single task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # Create route for submitting the new task form
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  patch 'tasks/:id', to: 'tasks#update', as: 'update_task'

  delete 'tasks/:id', to: 'tasks#destroy'

end
