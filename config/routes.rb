Rails.application.routes.draw do
  resources :search_results
  resources :keywords do
    collection { post :import }
  end

  devise_for :users

  authenticated :user do
    root to: "home#index", as: :authenticated_root
    post 'home/import', to: 'home#import', as: :import_home
  end

  root to: redirect('/users/sign_in')
end
