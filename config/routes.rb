Rails.application.routes.draw do
  devise_for :users
	root "posts#index", as: "home"
	get 'about' => 'pages#about', as: "about"
	

	resources :posts, only: [:show, :index]
	resources :posts do
		resources :comments

	end

	devise_scope :user do
    	get '/users/sign_out' => 'devise/sessions#destroy'
  	end

  	namespace :admin do
  		resources :posts, except: [:show, :index]
  	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
