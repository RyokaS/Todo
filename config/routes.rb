Rails.application.routes.draw do

  get 'todo', to:'todo#index'

  get 'todo/add'
  get 'todo/add', to:'todo#add'
  post 'todo/add', to:'todo#create'

  get 'todo/edit/:id', to:'todo#edit'
  patch 'todo/edit/:id', to:'todo#update'
  post 'todo/edit/:id', to:'todo#update'
  get 'todo/delete/:id', to: 'todo#delete'

  get 'todo/:id', to:'todo#show'


  get 'people', to:'people#index'

  get 'people/add'
  get 'people/add', to:'people#add'
  post 'people/add', to:'people#create'

  get 'people/edit/:id', to:'people#edit'
  patch 'people/edit/:id', to:'people#update'
  post 'people/edit/:id', to:'people#update'
  get 'people/delete/:id', to: 'people#delete'
  get 'people/login', to: 'people#login_form'
  post 'people/login', to: 'people#login'

  get 'people/:id', to:'people#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
