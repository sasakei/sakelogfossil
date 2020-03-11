Rails.application.routes.draw do

  get 'sessions/new'

  # http://localhost:3000 にアクセスするとpages#indexアクションにリクエストが振り分けられる
  root 'pages#index'
  # pages/helpというurlとpages#helpというアクションが紐付きました
  get 'pages/help'
  #userのcreateアクションに対応するroutes


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
#resources:Webサービスで一般的に必要なルーティングを一括で指定可能なメソッド
  resources :users
  resources :topics

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'

end



# getは、HTTP（後述）レスポンスのGETメソッドで、HTTPリクエスト(HTTPヘッダ)で渡したurlとコントローラを紐付けるアクセス方式です。
