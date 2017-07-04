Rails.application.routes.draw do

  get 'people', to:'people#index'

  get 'people/add'
  get 'people/add', to:'people#add'
  post 'people/add', to:'people#create'

  get 'people/edit/:id', to:'people#edit'
  patch 'people/edit/:id', to:'people#update'
  post 'people/edit/:id', to:'people#update'
  get 'people/delete/:id', to: 'people#delete'

  get 'people/:id', to:'people#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
