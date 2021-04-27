Rails.application.routes.draw do
	root to: "lists#index"
  resources :lists, only: [:index, :show, :new, :create] do
		# If we add the bookmark form to the list show we can remove :new here
  	resources :bookmarks, only: [:new, :create]
  	resources :reviews, only: [:create]
  end
  resources :bookmarks, only: [:destroy]
end
