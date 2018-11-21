Rails.application.routes.draw do
  # get 'sections/new'
  # get 'sections/index'
  # get 'sections/show'
  # get 'sections/edit'
  # get 'sections/delete'
  # get 'pages/new'
  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/edit'
  # get 'pages/delete'
  root 'demo#index'
  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'
  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  resources :sections do
    member do
      get :delete
    end
  end

  resources :demo
  # get 'demo', to: 'demo#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
