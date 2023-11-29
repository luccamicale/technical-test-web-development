Rails.application.routes.draw do
  resources :search_results
  resources :keywords
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  

  # Redirige la raíz a la página de inicio de sesión
  root to: "home#index"
  # Defines the root path route ("/")
  
end
