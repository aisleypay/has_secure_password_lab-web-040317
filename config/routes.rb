Rails.application.routes.draw do
  root 'welcome#home'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'logout', to: 'sessions#destroy'

  resources :users, only:[:new, :create]

end
