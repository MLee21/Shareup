Rails.application.routes.draw do

  namespace :api do 
    resources :shares
  end

  devise_for :users,
    :controllers => {
      :omniauth_callbacks => "users/omniauth_callbacks"
    }

  get '/dashboard' => 'welcome#dashboard'
  root_to: 'welcome#index'
end
