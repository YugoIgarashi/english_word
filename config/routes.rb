Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  resources :microposts
  resources :users
  get 'page/index'
  root 'users#index'
 
  get '/posts' ,to: "posts#index"
  get "/posts/:id",to:"posts#show"
  get '/' => "home#top"
  get '/about' => "home#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
