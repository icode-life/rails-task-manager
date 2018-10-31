Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  ######### Basic CRUD operations #####################

  # read all
  get 'tasks', to: 'tasks#index', as: :tasks

  # create step 2: post the data from the form
  post 'tasks', to: 'tasks#create'

  # create: get the form
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # update step 1: get the form again
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # read one
  get 'tasks/:id', to: 'tasks#show', as: :task

  # update step 2: post the modified object
  patch 'tasks/:id', to: 'tasks#update'

  # delete
  delete 'tasks/:id', to: 'tasks#destroy'

end
