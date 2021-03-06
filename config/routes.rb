Rails.application.routes.draw do
	root 'welcome#index'

	devise_for :users, controllers: { registrations: "registrations" }
	# resources :boats
	# resources :jobs
	# end
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	# Boat Routes
	get    '/boats' 	 	  	=> 'boats#index', as: "boats"
	get    '/boats/new' 	  	=> 'boats#new', as: "new_boat"
	post   '/boats/new' 		=> 'boats#create'
	get    '/boats/:id' 	  	=> 'boats#show', as: "boat"
	get    '/boats/:id/edit' 	=> 'boats#edit', as: "edit_boat"
	put    '/boats/:id'	  		=> 'boats#update'
	patch  '/boats/:id'	  		=> 'boats#update'
	delete '/boats/:id' 	  	=> 'boats#destroy'

	# Job Routes
	get    '/jobs' 	 	  	=> 'jobs#index', as: "jobs"
	get    '/jobs/new' 	  	=> 'jobs#new', as: "new_job"
	post   '/jobs/new' 		=> 'jobs#create'
	get    '/jobs/:id' 	  	=> 'jobs#show', as: "job"
	get    '/jobs/:id/edit' => 'jobs#edit', as: "edit_job"
	put    '/jobs/:id'	  	=> 'jobs#update'
	patch  '/jobs/:id'		=> 'jobs#update'
	delete '/jobs/:id' 	  	=> 'jobs#destroy'

  resources :assignments
  # post "/assignments/new" => "assignments#create"

  #d3
  get '/d3_data', to: 'd3_data#d3_data', as: 'd3_data'
end
