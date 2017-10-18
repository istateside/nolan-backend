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
    resource :about, except: [:create, :destroy, :new]
    resources :projects do
      resources :slides
    end
  end

  get '/log_in', controller: :sessions, action: :new, as: :log_in
  delete '/log_out', controller: :sessions, action: :destroy, as: :log_out
  post '/log_in', controller: :sessions, action: :create, as: :create_log_in

end
