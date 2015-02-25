Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
 # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :posts, only: [:index, :show]
  root to: 'posts#index'
end
