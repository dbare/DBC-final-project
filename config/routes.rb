Rails.application.routes.draw do

	root "application#index"

	resources :jobs

	resources :favorites


	resources :users do
		resources :evaluations
    	resources :uploads
    	resources :resumes
			resources :conversations do
				resources :messages
			end
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
