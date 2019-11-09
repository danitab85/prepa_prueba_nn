Rails.application.routes.draw do
  get 'assignments/new'
  resources :projects
  resources :people
  resources :assigments
  post 'assignments', to: 'assignments#create'
  delete 'assigments/:project_id/:person_id', to: 'assignments#destroy', as: 'assignment'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'projects#index'
end
