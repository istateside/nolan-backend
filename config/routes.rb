Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  scope module: 'pages' do
    get 'about'
    get 'comics'
    get 'other'
    get 'illustration'
  end
end