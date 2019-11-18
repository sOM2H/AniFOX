Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "indexes#index"

  resources :anime do
    resources :seasons
  end
end
