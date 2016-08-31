Rails.application.routes.draw do
  devise_for :users
  
  root 'top#index'
  resources:blogs,only: [:index,:new,:create,:edit,:update,:destroy] 
  
  post 'blogs/confirm' => 'blogs#confirm'
  
  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面
  
  
end
