Rails.application.routes.draw do
  resources :posts do
    member do
    get 'toggle_follow', to: 'posts#toggle_follow'
    get 'stop_following', to: 'posts#stop_following'
    get 'toggle_like', to: 'posts#toggle_like'
    get 'stop_liking', to: 'posts#stop_liking'
    end
  end

  devise_for :users
  root 'pages#feed'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
