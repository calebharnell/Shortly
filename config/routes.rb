Rails.application.routes.draw do
  root 'pages#search'
  
  get 'pages/result', to: 'pages#result'

  post '/', to: 'pages#result'

  get '/:hash', to: 'pages#redirect'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
