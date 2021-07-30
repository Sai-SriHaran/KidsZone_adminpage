Rails.application.routes.draw do
  get 'showuser/index'
  #post 'showuser/delete/:name' => 'showuser#delete'
  resources :showuser
  devise_for :users
  root to: "admin/dashboard#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
