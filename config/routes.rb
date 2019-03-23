Rails.application.routes.draw do
  resources :regions
  resources :companies

  get 'search', to: 'companies#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
