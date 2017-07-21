Rails.application.routes.draw do
  get 'parks/index'

  resources :parks
end
