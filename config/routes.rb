Rails.application.routes.draw do
  get "sign_up" => 'users#new', :as => "sign_up"
  resources :users
  get 'welcome/index'

  resources :anime_blogs do
    resources :comments
  end


  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
