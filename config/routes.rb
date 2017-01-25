Rails.application.routes.draw do
  resources :books do
    resources :reviews
  end

  devise_for :users
  root 'books#index'
end
