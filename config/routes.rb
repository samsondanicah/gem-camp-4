Rails.application.routes.draw do
  devise_for :users
  get 'welcome/Controller'
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
  resources :posts do
    resources :comments, except: :show
  end
  resources :categories, except: :show
end

