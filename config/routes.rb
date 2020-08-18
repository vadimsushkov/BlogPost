Rails.application.routes.draw do
  get 'users/index'
  get 'products/index'
  devise_for :users, :path_prefix => 'd', :controllers => { registrations: 'users/registrations' }
	root "posts#index", as: "home"
	get 'about' => 'pages#about', as: "about"
	get ':user/edit-profile' => 'devise/registration#edit', :as => :edit_user_profile
	match '/users/:id',     to: 'users#show',       via: 'get'
	get '/users/sign_out' => 'devise/sessions#destroy'
	resources :products
	resources :users, :only =>[:show]
	resources :posts, only: [:show, :index]
	resources :posts do
		resources :comments

	end

	devise_scope :user do
    	get '/users/sign_out' => 'devise/sessions#destroy'
  	end

  	namespace :admin do
  		resources :users, :only =>[:show, :destroy]
  		resources :posts, except: [:show, :index]
  	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
