Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  resources :posts, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  devise_for :users
  root to: "homes#top"
  get "/home/about" => "homes#about" ,as: "about"
  get "/mypage" => "users#index" ,as: "mypage"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
