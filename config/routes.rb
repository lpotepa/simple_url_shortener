Rails.application.routes.draw do
  root 'urls#index'
  get '/:slug', to: 'redirects#index'
  resources :urls, only: [:index, :create]
end
