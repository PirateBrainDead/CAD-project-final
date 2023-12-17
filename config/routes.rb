Rails.application.routes.draw do
  authenticated :user, ->(user) { user.admin? } do
  get 'admin', to: 'admin#index'
  get 'admin/posts'
  get 'admin/comments'
  get 'admin/users'
  get 'admin/show_post/:id', to: "admin#show_post", as: "admin_post"
end

root "home#index"

get "/home", to: "home#index"
get '/search', to: "search#index"
get '/about', to: "about#show"


  devise_for :users
    resources :contacts, only: [:new, :create]
  resources :posts do
  resources :comments


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
#root :to => "home#index"

 end
end
