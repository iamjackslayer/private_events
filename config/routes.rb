Rails.application.routes.draw do
  post 'events/create' => 'events#create'

  get 'events/show' => 'events#show'

  get 'events/new' => 'events#new'

  get 'events/index' => 'events#index'





  get 'users/new' => 'users#new'

  post 'users/sign_up' => 'users#sign_up'

  post 'users/sign_in' => 'users#sign_in'

  get 'users/:id/show' => 'users#show'

  get 'users/join' => 'users#join'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
