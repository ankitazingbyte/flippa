Rails.application.routes.draw do
  resources :images
  devise_for :users 
  get 'welcome/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'welcome#index'
    get 'welcome/website'
    get 'welcome/domain'
    get 'welcome/app'
    get 'welcome/StartSelling'
   resources :articles do
   resources :comments
end
resources :domains
resources :apps
resources :websites do
	 collection { post :search, to: 'websites#index' }
	end
  resources :amezons
end
