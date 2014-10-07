Rails.application.routes.draw do
  root 'main#index'
  namespace :api do
    resources :books, except: [:update]
    resources :finished_books
    resources :genres
  end
  match '*path', to: 'main#index', via: :get

end

