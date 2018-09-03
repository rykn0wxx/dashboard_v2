Rails.application.routes.draw do
  namespace :admin do
      resources :users

      root to: "users#index"
    end
  devise_for :users
  namespace :main do
		get 'index' => 'page#index', :as => 'index'
		get 'theme' => 'page#theme', :as => 'theme'
  end

	root :to => 'main/page#index'
end
