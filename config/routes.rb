Mystarter::Application.routes.draw do
  

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  
  mount RailsAdmin::Engine => '/admin' , :as => 'rails_admin'
end