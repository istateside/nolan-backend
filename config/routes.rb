Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  scope module: 'pages' do
    get 'about'
    get 'comics'
    get 'other'
    get 'illustrations'
  end

  namespace :admin do
    root action: :index
    resources :images
    resource :about
    resources :projects do
      resources :slides
    end
  end
end
