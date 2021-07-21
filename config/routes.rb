Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  resources :microposts
  resources :users
  get 'page/index'

 
  get '/posts' ,to: "posts#index"
  get "/posts/:id",to:"posts#show"
  get '/' => "home#top"
  get '/about' => "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
