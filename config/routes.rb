Rails.application.routes.draw do

	root "application#index"
	# get '/' => "application#index"
	get '/logout' => 'sessions#destroy'
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'

	resources :candidates, only: [:new, :create, :show]
	resources :companies, only: [:new, :create, :show]
end
