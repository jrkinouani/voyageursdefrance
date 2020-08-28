Rails.application.routes.draw do
  resources :cities
  root :to => 'static_pages#home'
  get '/search' => 'static_pages#search', :as => 'search_page'
  get '/about' => 'static_pages#about'
  get '/faq' => 'static_pages#faq'
  get '/covid' => 'static_pages#covid'
  get '/air' => 'static_pages#air'
  get '/meteo' => 'static_pages#meteo'
  get '/securite' => 'static_pages#security'
  get '/restauration' => 'static_pages#restauration'
  get '/fun' => 'static_pages#fun'
  post 'cities/:id' => 'cities#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
