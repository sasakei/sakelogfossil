Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  # http://localhost:3000 にアクセスするとpages#indexアクションにリクエストが振り分けられる
  root 'pages#index'
  # pages/helpというurlとpages#helpというアクションが紐付きました
  get 'pages/help'
  #userのcreateアクションに対応するroutes
  #resources:Webサービスで一般的に必要なルーティングを一括で指定可能なメソッド
  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end



# getは、HTTP（後述）レスポンスのGETメソッドで、HTTPリクエスト(HTTPヘッダ)で渡したurlとコントローラを紐付けるアクセス方式です。
