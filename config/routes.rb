Rails.application.routes.draw do
  
	root "application#index"

	resources :jobs 
	resources :users
	resources :projects

	get '/team' => 'teams#index'
	get '/contact' => 'contacts#index'

	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'

end
