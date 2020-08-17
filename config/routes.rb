Rails.application.routes.draw do
  resources :cities
  root :to => 'static_pages#home'
  get '/search' => 'static_pages#search', :as => 'search_page'
  get 'about' => 'static_pages#about'
  get 'faq' => 'static_pages#faq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
