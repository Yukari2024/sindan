Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  root 'posts#index'

  resources :perfumes
  root 'perfumes#index'

  resources :seihous
  root 'seihous#index'

  resources :taberarerukamis
  root 'taberarerukamis#index'

  resources :syouhinsyoukais
  root 'syouhinsyoukais#index'
  

  #省略
resources :perfumes
#省略




#カテゴリー分けに関係するところのみ記載
get 'posts/dog' => 'posts#dog'
get 'posts/cat' => 'posts#cat'
get 'posts/hadakadebanezumi' => 'posts#hadakadebanezumi'



patch 'posts/:id' => 'posts#update'
delete 'posts/:id' => 'posts#destroy'
  get 'posts/:id/edit' => 'posts#edit', as:'edit_post'

  
end




