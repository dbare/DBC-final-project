Rails.application.routes.draw do
  
	root "application#index"

	resources :jobs 
	resources :users do 
		resources :evaluations
	end 

	resources :profiles
	resources :links
	
	resources :projects
	resources :companies

	get '/team' => 'static#team'
	get '/contact' => 'static#contact'

	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'

end
