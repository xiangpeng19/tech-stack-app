Rails.application.routes.draw do
  resources :trades do
    member do
      post :close
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  get "/admin", to: "admins#index"
end
