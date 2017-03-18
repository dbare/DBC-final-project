Rails.application.routes.draw do

	root "application#index"

	get '/logout' => 'sessions#destroy'
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'

	resources :candidates
end
