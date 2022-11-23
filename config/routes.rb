Rails.application.routes.draw do
  get 'posts/index'
  get 'home/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index"

  #11/21 1230 application.html.erbに記載したlog_outが動作せず。下記の表記を記述して解決した。
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :posts
  
end
