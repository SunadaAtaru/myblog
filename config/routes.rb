Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users,
  controllers: { registrations: 'registrations' } # ここの行を追加

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # ここにusersコントローラーのshowアクションのルーティングを追加する
  get '/users/:id', to: 'users#show', as: 'user'

  # ==========ここから追加する==========
  resources :posts, only: %i(new create) do
    resources :photos, only: %i(create)
  end
  # ==========ここまで追加する==========

end
