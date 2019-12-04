Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :user_favorites
      post "/ufav_show", to: "user_favorites#user_favs"
      post "/nearest", to: "events#nearest"
      get "/free", to: "events#free"
      post "/signup", to: "users#create"
      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
