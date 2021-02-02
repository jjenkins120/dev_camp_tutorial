Rails.application.routes.draw do
  #IF YOU WANTED TO MAKE A CUSTOM ROUTE WITH RESOURCES:
  # resources :portfolios, except: [:show]
  # get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  resources :portfolios

  resources :blogs

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  root to: 'pages#home'

end
