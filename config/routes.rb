Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations' }
  devise_scope :user do
    post 'users/confirm', to: 'user/registrations#confirm'
  end

  root to: 'mypage#index'
end

