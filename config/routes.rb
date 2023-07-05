Rails.application.routes.draw do
  devise_for :users
  get 'welcome/Controller'
  get 'welcome/index'

  root 'welcome#index'
  resources :posts do
    resources :comments, except: :show
  end
  resources :categories, except: :show
end

