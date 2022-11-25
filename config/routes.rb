Rails.application.routes.draw do
  get 'reservations/index'

  #下記1行、Deviseがrails7 turboに対応していないため、表示されないエラーメッセージ解消のために追記
  devise_for :users, controllers: { registrations: "registrations" } # 上はsessionsを指定したが、今回はregistrationsを指定する

  get 'posts/index'
  get 'home/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index"

  #11/21 1230 application.html.erbに記載したlog_outが動作せず。下記の表記を記述して解決した。
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :posts
  resources :reservations

end
