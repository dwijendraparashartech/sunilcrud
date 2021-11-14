Rails.application.routes.draw do
  resources :akarshes
  root "articles#index"
  resources :articles
end
