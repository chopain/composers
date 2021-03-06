Rails.application.routes.draw do
  get 'compositions/show'

  root 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/help', to: 'static_pages#help'

  resources :composers
  resources :compositions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
