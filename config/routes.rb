Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}


  #IF YOU WANTED TO MAKE A CUSTOM ROUTE WITH RESOURCES:
  # resources :portfolios, except: [:show]
  # get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  resources :portfolios

  resources :blogs do 
    member do
      get :toggle_status
    end
  end
  
  get 'angular-items', to: 'portfolios#angular'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  root to: 'pages#home'

end
